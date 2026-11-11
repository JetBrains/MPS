#!/usr/bin/env python3
"""Flatten the text styles of an `mps_mcp_print_node` HTML print into runs, one output line per editor line.

Observer aid for S39a criteria 3, 4, 6, 6a and S39b criteria 3, 5, 6, 8 (fixture `alerts3*`, rev. 4). Reads the `index.html`
of an HTML print (or the directory that holds it) and prints, for every line of the projection,

    <line no>: <token> → <colour>, <weight>, <slant>[, bg <colour>][, ref] | <token> → ...

A token is a whitespace-free piece of text of one cell (a span boundary always splits, so `(90)` drawn by three
cells reads `(`, `90`, `)` even when they share a style). `colour` is the hex of the innermost `sN` class that sets a
colour, else `default`; weight is `bold` or `plain`; slant `italic` or `upright`. `ref` marks the text of a reference
cell (a `data-t` span; its class, inherited colour included, is read like any other span's).

usage: html_runs.py <index.html | print directory> [--grep TEXT] [--node ID]
  --grep TEXT  print only lines that contain TEXT
  --node ID    print only the text inside the span with data-n="ID" (e.g. one alert)
  --merge      rev. 1 behaviour: abutting cells of one style form one token (the shipped `prints/*/*.runs`)
Stdlib only; read-only.
"""
from __future__ import annotations

import argparse
import html.parser
import os
import re
import sys

RULE = re.compile(r"\.(s\d+)\{([^}]*)\}")


def parse_classes(css: str) -> dict:
    out = {}
    for name, body in RULE.findall(css):
        st = {}
        for decl in body.split(";"):
            if ":" not in decl:
                continue
            k, v = (x.strip() for x in decl.split(":", 1))
            if k == "color":
                st["color"] = v.lower()
            elif k == "font-weight":
                st["bold"] = v == "bold"
            elif k == "font-style":
                st["italic"] = v == "italic"
            elif k in ("background", "background-color"):
                st["bg"] = v.lower()
        out[name] = st
    return out


class Walker(html.parser.HTMLParser):
    def __init__(self, classes, node=None, merge=False):
        super().__init__(convert_charrefs=True)
        self.classes, self.node, self.merge = classes, node, merge
        self.stack = []          # per open element: (style dict, is_ref, is_node_match)
        self.in_pre = False
        self.chars = []          # (char, style tuple)

    def handle_starttag(self, tag, attrs):
        a = dict(attrs)
        if tag == "pre" and "mps" in (a.get("class") or ""):
            self.in_pre = True
            return
        if not self.in_pre:
            return
        st = {}
        for c in (a.get("class") or "").split():
            st.update(self.classes.get(c, {}))
        self.stack.append((tag, st, "data-t" in a, self.node is not None and a.get("data-n") == self.node))
        if not self.merge:
            self.chars.append(("\x00", None))

    def handle_endtag(self, tag):
        if tag == "pre" and self.in_pre:
            self.in_pre = False
            return
        if self.in_pre and self.stack:
            self.stack.pop()
            if not self.merge:
                self.chars.append(("\x00", None))

    def handle_data(self, data):
        if not self.in_pre:
            return
        if self.node is not None and not any(m for *_, m in self.stack):
            # keep line breaks so line numbers stay true
            self.chars.extend(("\n", None) for ch in data if ch == "\n")
            return
        eff, ref = {}, False
        for _, st, r, _m in self.stack:
            eff.update(st)
            ref = ref or r
        key = (eff.get("color", "default"), eff.get("bold", False), eff.get("italic", False), eff.get("bg"), ref)
        self.chars.extend((ch, key) for ch in data)


def runs(chars):
    lines, cur, tok, tkey = [], [], "", None
    def flush():
        nonlocal tok, tkey
        if tok:
            cur.append((tok, tkey))
        tok, tkey = "", None
    for ch, key in chars:
        if ch == "\n":
            flush(); lines.append(cur); cur = []
        elif ch == "\x00" or ch.isspace():
            flush()
        else:
            if tok and key != tkey:
                flush()
            tok += ch; tkey = key
    flush(); lines.append(cur)
    return lines


def fmt(tok, key):
    color, bold, italic, bg, ref = key
    s = f"{tok} → {color}, {'bold' if bold else 'plain'}, {'italic' if italic else 'upright'}"
    if bg:
        s += f", bg {bg}"
    if ref:
        s += ", ref"
    return s


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("path")
    ap.add_argument("--grep")
    ap.add_argument("--node")
    ap.add_argument("--merge", action="store_true")
    a = ap.parse_args(argv)
    path = os.path.join(a.path, "index.html") if os.path.isdir(a.path) else a.path
    text = open(path, encoding="utf-8").read()
    css = "\n".join(re.findall(r"<style>(.*?)</style>", text, re.S))
    w = Walker(parse_classes(css), a.node, a.merge)
    w.feed(text)
    for i, line in enumerate(runs(w.chars), 1):
        if not line:
            continue
        joined = " | ".join(fmt(t, k) for t, k in line)
        if a.grep and a.grep not in " ".join(t for t, _ in line):
            continue
        print(f"{i}: {joined}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
