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
discard "forward decl of StepVisual_TextStyleForDefinedFont"
discard "forward decl of StepVisual_BoxCharacteristicSelect"
discard "forward decl of StepVisual_TextStyleWithBoxCharacteristics"
discard "forward decl of StepVisual_TextStyleWithBoxCharacteristics"
type
  HandleC1C1* = Handle[StepVisualTextStyleWithBoxCharacteristics]
  StepVisualTextStyleWithBoxCharacteristics* {.
      importcpp: "StepVisual_TextStyleWithBoxCharacteristics",
      header: "StepVisual_TextStyleWithBoxCharacteristics.hxx", bycopy.} = object of StepVisualTextStyle ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## TextStyleWithBoxCharacteristics


proc constructStepVisualTextStyleWithBoxCharacteristics*(): StepVisualTextStyleWithBoxCharacteristics {.
    constructor, importcpp: "StepVisual_TextStyleWithBoxCharacteristics(@)",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc init*(this: var StepVisualTextStyleWithBoxCharacteristics;
          aName: Handle[TCollectionHAsciiString];
          aCharacterAppearance: Handle[StepVisualTextStyleForDefinedFont];
          aCharacteristics: Handle[StepVisualHArray1OfBoxCharacteristicSelect]) {.
    importcpp: "Init", header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc setCharacteristics*(this: var StepVisualTextStyleWithBoxCharacteristics;
    aCharacteristics: Handle[StepVisualHArray1OfBoxCharacteristicSelect]) {.
    importcpp: "SetCharacteristics",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc characteristics*(this: StepVisualTextStyleWithBoxCharacteristics): Handle[
    StepVisualHArray1OfBoxCharacteristicSelect] {.noSideEffect,
    importcpp: "Characteristics",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc characteristicsValue*(this: StepVisualTextStyleWithBoxCharacteristics;
                          num: int): StepVisualBoxCharacteristicSelect {.
    noSideEffect, importcpp: "CharacteristicsValue",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc nbCharacteristics*(this: StepVisualTextStyleWithBoxCharacteristics): int {.
    noSideEffect, importcpp: "NbCharacteristics",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
type
  StepVisualTextStyleWithBoxCharacteristicsbaseType* = StepVisualTextStyle

proc getTypeName*(): cstring {.importcpp: "StepVisual_TextStyleWithBoxCharacteristics::get_type_name(@)", header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_TextStyleWithBoxCharacteristics::get_type_descriptor(@)",
    header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}
proc dynamicType*(this: StepVisualTextStyleWithBoxCharacteristics): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_TextStyleWithBoxCharacteristics.hxx".}