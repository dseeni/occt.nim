##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESAppli_Node"
discard "forward decl of IGESAppli_FiniteElement"
discard "forward decl of IGESAppli_FiniteElement"
type
  HandleIGESAppliFiniteElement* = Handle[IGESAppliFiniteElement]

## ! defines FiniteElement, Type <136> Form <0>
## ! in package IGESAppli
## ! Used to define a finite element with the help of an
## ! element topology.

type
  IGESAppliFiniteElement* {.importcpp: "IGESAppli_FiniteElement",
                           header: "IGESAppli_FiniteElement.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliFiniteElement*(): IGESAppliFiniteElement {.constructor,
    importcpp: "IGESAppli_FiniteElement(@)", header: "IGESAppli_FiniteElement.hxx".}
proc init*(this: var IGESAppliFiniteElement; aType: int;
          allNodes: Handle[IGESAppliHArray1OfNode];
          aName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESAppli_FiniteElement.hxx".}
proc topology*(this: IGESAppliFiniteElement): int {.noSideEffect,
    importcpp: "Topology", header: "IGESAppli_FiniteElement.hxx".}
proc nbNodes*(this: IGESAppliFiniteElement): int {.noSideEffect,
    importcpp: "NbNodes", header: "IGESAppli_FiniteElement.hxx".}
proc node*(this: IGESAppliFiniteElement; index: int): Handle[IGESAppliNode] {.
    noSideEffect, importcpp: "Node", header: "IGESAppli_FiniteElement.hxx".}
proc name*(this: IGESAppliFiniteElement): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "IGESAppli_FiniteElement.hxx".}
type
  IGESAppliFiniteElementbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_FiniteElement::get_type_name(@)",
                            header: "IGESAppli_FiniteElement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_FiniteElement::get_type_descriptor(@)",
    header: "IGESAppli_FiniteElement.hxx".}
proc dynamicType*(this: IGESAppliFiniteElement): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_FiniteElement.hxx".}
