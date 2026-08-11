Language patterns

=================



A collection of sample micro-languages to illustrate common basic patterns in MPS language design. Patterns are separated into separate virtual folders,
both in the language definition and the sandbox solution.



## container-components



A common scenario where a container (FruitPlate in our case) contains elements (Fruit) of multiple kinds (Apples, Oranges). An abstract concept (Fruit) is used
as a placeholder in the container and concrete sub-concepts (Apples, Oranges) are then provided by the language user explicitly.



## custom-presentation



Components held within Containers are referred to from ComponentUsages. The reference, however, should contain the name of the containing Container together
with the name of the Component - both in the completion menu and in the editor. Additionally, scoping rules should guarantee that only one reference to any
Component may exist and the completion menu is filtered so that already referred Components are not offered.



## declaration-references



A typical pattern on declarations and references to them - Singers at an event can be organised into agendas with their Performances. Different types of
Performances are available.

Scoping rules ensure that:


* only singers listed in the current event can be added to its agenda

* each singer can only be listed once in a combined performance

* a handy intention (IntroduceSinger) is available to create a singer from a string typed in the performance (frequently known as "create from usage"
or "introduce variable" refactoring).

### declaration-references.java

Creating own declarations (Items) in BaseLanguage and using references in order to both read and write the values of the declarations. These will seamlessly
integrate into BaseLanguage.
The generator will translate the Items and ItemReferences into Java's LocalVariableDeclarations and VariableReferences, respectively.

## dotexpression

De-referencing elements by "dot" notation is a very common practise in many languages. BaseLanguage offers the DotExpression concept to mimics Java's
"dot" operator and you can leverage it in your languages, if they're extending BaseLanguage's expressions.
Let's assume a simple form with several addresses that need to be validated by validation expressions. The expressions need to refer to the street and zip code
of each address in order to include their values in the validation expression. The sample defines:
* Address concept to represent the actual address
* AddressReference concept that extends Expression and represents an address in the validation expression
* StreetOperation and ZipOperation, both extending the OperationOnAddress abstract concept, which form the right-side of DotExpressions and infer the correct type



## fluent-editing

An example of creating a text-like editing experience and implements many of the recommendations mentioned in
the Editor cookbook (https://www.jetbrains.com/help/mps/editor-cookbook.html). It implements a simple language for specifying drawing commands (line, rectangle):
* an empty line is inserted upon hitting Enter, empty lines can be placed anywhere thanks to a default node factory specified for the child collection
* empty line does not appear as an option in the completion menu thanks to implementing the IDontSubstituteByDefault concept interface
* typing on an empty line will insert the desired item (line or rectangle)
* when the body of a block of code is empty, the cursor is positioned on the first line (next to the header), editing can be started on this first line
* NodeFactories take care of propagating values to new nodes if a nodes is replaced with another one
* an optional "line style" child can be specified on the left of the draw commands thanks to left-side transformations
* wrappers allow the desired line style to be typed on an empty line and an intermediate "IncompleteCommand" will be created automatically our of it
* IncompleteCommand expects either line or rectangle to be typed and will be substituted into the desired draw command instantly
* draw commands define aliases and editors so that they start with the same word
* an editor in the abstract super-concept of the draw commands is reused by concrete sub-concepts


## override-editor-component



An example of using editor components that get overriden in a sub-concept (Truck). An editor in Car uses an editor component CarProperties also defined in Car.
A sub-concept (Truck) overrides the CarProperties editor component with the TruckProperties editor component to contain its own properties. The editor in Car
will use the Truck’s variant of the editor component for Trucks and the Car variant for Cars.


## seamless-substitution



An example that seamlessly switches (substitutes) between different related subconcepts. A Request contains a "description", which may be either a string,
a simple form or a complex form. A completion-menu lets the user pick the requested description type. If the user simply types text, the "string"-based
description is picked automatically in the "PickTheRightDescriptionType" substitute action.
The first cell of editors for each of the description concepts is sensitive to substitution (set through the "menu" property of the cell)
and so offers the option to switch between description types with completion-menu.
The "Converters" node factories contain code that preserves parts of the description information and propagates it into the newly instantiated
description concept.
