##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of StepRepr_DescriptiveRepresentationItem"
discard "forward decl of StepRepr_DescriptiveRepresentationItem"
type
  HandleC1C1* = Handle[StepReprDescriptiveRepresentationItem]
  StepReprDescriptiveRepresentationItem* {.
      importcpp: "StepRepr_DescriptiveRepresentationItem",
      header: "StepRepr_DescriptiveRepresentationItem.hxx", bycopy.} = object of StepReprRepresentationItem ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## DescriptiveRepresentationItem


proc constructStepReprDescriptiveRepresentationItem*(): StepReprDescriptiveRepresentationItem {.
    constructor, importcpp: "StepRepr_DescriptiveRepresentationItem(@)",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc init*(this: var StepReprDescriptiveRepresentationItem;
          aName: Handle[TCollectionHAsciiString];
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc setDescription*(this: var StepReprDescriptiveRepresentationItem;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc description*(this: StepReprDescriptiveRepresentationItem): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepRepr_DescriptiveRepresentationItem.hxx".}
type
  StepReprDescriptiveRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepRepr_DescriptiveRepresentationItem::get_type_name(@)", header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_DescriptiveRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc dynamicType*(this: StepReprDescriptiveRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}