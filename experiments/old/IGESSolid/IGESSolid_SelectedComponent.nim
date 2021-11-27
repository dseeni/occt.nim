##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of IGESSolid_BooleanTree"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESSolid_SelectedComponent"
discard "forward decl of IGESSolid_SelectedComponent"
type
  HandleC1C1* = Handle[IGESSolidSelectedComponent]

## ! defines SelectedComponent, Type <182> Form Number <0>
## ! in package IGESSolid
## ! The Selected Component entity provides a means of
## ! selecting one component of a disjoint CSG solid

type
  IGESSolidSelectedComponent* {.importcpp: "IGESSolid_SelectedComponent",
                               header: "IGESSolid_SelectedComponent.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidSelectedComponent*(): IGESSolidSelectedComponent {.
    constructor, importcpp: "IGESSolid_SelectedComponent(@)",
    header: "IGESSolid_SelectedComponent.hxx".}
proc init*(this: var IGESSolidSelectedComponent;
          anEntity: Handle[IGESSolidBooleanTree]; selectPnt: Xyz) {.
    importcpp: "Init", header: "IGESSolid_SelectedComponent.hxx".}
proc component*(this: IGESSolidSelectedComponent): Handle[IGESSolidBooleanTree] {.
    noSideEffect, importcpp: "Component", header: "IGESSolid_SelectedComponent.hxx".}
proc selectPoint*(this: IGESSolidSelectedComponent): Pnt {.noSideEffect,
    importcpp: "SelectPoint", header: "IGESSolid_SelectedComponent.hxx".}
proc transformedSelectPoint*(this: IGESSolidSelectedComponent): Pnt {.noSideEffect,
    importcpp: "TransformedSelectPoint", header: "IGESSolid_SelectedComponent.hxx".}
type
  IGESSolidSelectedComponentbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_SelectedComponent::get_type_name(@)",
                            header: "IGESSolid_SelectedComponent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_SelectedComponent::get_type_descriptor(@)",
    header: "IGESSolid_SelectedComponent.hxx".}
proc dynamicType*(this: IGESSolidSelectedComponent): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_SelectedComponent.hxx".}
























