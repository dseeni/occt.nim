##  Created on: 2015-09-03
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_IntegerRepresentationItem"
discard "forward decl of StepRepr_IntegerRepresentationItem"
type
  HandleC1C1* = Handle[StepReprIntegerRepresentationItem]
  StepReprIntegerRepresentationItem* {.importcpp: "StepRepr_IntegerRepresentationItem", header: "StepRepr_IntegerRepresentationItem.hxx",
                                      bycopy.} = object of StepReprRepresentationItem ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## IntegerRepresentationItem


proc constructStepReprIntegerRepresentationItem*(): StepReprIntegerRepresentationItem {.
    constructor, importcpp: "StepRepr_IntegerRepresentationItem(@)",
    header: "StepRepr_IntegerRepresentationItem.hxx".}
proc init*(this: var StepReprIntegerRepresentationItem;
          theName: Handle[TCollectionHAsciiString]; theValue: int) {.
    importcpp: "Init", header: "StepRepr_IntegerRepresentationItem.hxx".}
proc setValue*(this: var StepReprIntegerRepresentationItem; theValue: int) {.
    importcpp: "SetValue", header: "StepRepr_IntegerRepresentationItem.hxx".}
proc value*(this: StepReprIntegerRepresentationItem): int {.noSideEffect,
    importcpp: "Value", header: "StepRepr_IntegerRepresentationItem.hxx".}
type
  StepReprIntegerRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepRepr_IntegerRepresentationItem::get_type_name(@)",
                            header: "StepRepr_IntegerRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_IntegerRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_IntegerRepresentationItem.hxx".}
proc dynamicType*(this: StepReprIntegerRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_IntegerRepresentationItem.hxx".}