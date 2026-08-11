Requirement Tracking sample project
===================================

This sample projects implements language-agnostic requirement tracking. Along the way it illustrates several useful language constructs:
* Node attributes to annotate nodes of different languages
* Multiple editors (presentations) per concept and switching between them with editor hints
* Programmatic access to the selected editor hints as well as programmatic selection of an editor
* Reference scoping to avoid repetition in collections of references

The RequirementDefinitions languages enables users to write their requirements/specifications in MPS. A simple TextGen generates plain text files containing the requirements.

The Specification solution is an example of such requirements specification. The requirements are organized into models by their respective concerned sub-systems.

The Traces languages defines an attribute that can be attached to any node (BaseConcept). The attribute holds references to the requirement entries in the requirement specifications.
Two editors are available - a default one, which only shows the original code, and a "ShowTraces" one, which displays the requirement traces next to the code. "Push hints" can be used to switch between the two editors.
An intention is available to attach/detach the attribute to nodes. When the RequirementTrace attribute is being added through the intention to a node, the "ShowTraces" editor hint is selected programmatically, so that the user can instantly see the requirement traces in the code.
Multiple traces can be specified for an attribute. Scoping for RequirementEntryReference ensures that the user cannot enter a specific trace multiple times for the same attribute.

The ProjectCode solution simulates the actual code of a project that must conform to the specification contained in the Specification solution. The code is organized by functionality into models. Each model imports the relevant specification models from the Specification solution.
The code, both Java and XML is annotated with requirement traces. The traces are only visible, when the ShowTraces editor hint is pushed.
With intentions additional traces can be added or removed.

More details can be found in the [Requirement tracking language cookbook](https://www.jetbrains.com/help/mps/requirement-tracking-language.html).
