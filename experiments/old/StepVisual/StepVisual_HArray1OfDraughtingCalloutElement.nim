##  Created on: 2015-10-29
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

type
  StepVisualHArray1OfDraughtingCalloutElement* {.
      importcpp: "StepVisual_HArray1OfDraughtingCalloutElement",
      header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx", bycopy.} = object of StepVisualArray1OfDraughtingCalloutElement


proc constructStepVisualHArray1OfDraughtingCalloutElement*(theLower: int;
    theUpper: int): StepVisualHArray1OfDraughtingCalloutElement {.constructor,
    importcpp: "StepVisual_HArray1OfDraughtingCalloutElement(@)",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc constructStepVisualHArray1OfDraughtingCalloutElement*(theLower: int;
    theUpper: int; theValue: ValueType): StepVisualHArray1OfDraughtingCalloutElement {.
    constructor, importcpp: "StepVisual_HArray1OfDraughtingCalloutElement(@)",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc constructStepVisualHArray1OfDraughtingCalloutElement*(
    theOther: StepVisualArray1OfDraughtingCalloutElement): StepVisualHArray1OfDraughtingCalloutElement {.
    constructor, importcpp: "StepVisual_HArray1OfDraughtingCalloutElement(@)",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc array1*(this: StepVisualHArray1OfDraughtingCalloutElement): StepVisualArray1OfDraughtingCalloutElement {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc changeArray1*(this: var StepVisualHArray1OfDraughtingCalloutElement): var StepVisualArray1OfDraughtingCalloutElement {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
type
  StepVisualHArray1OfDraughtingCalloutElementbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepVisual_HArray1OfDraughtingCalloutElement::get_type_name(@)", header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_HArray1OfDraughtingCalloutElement::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}
proc dynamicType*(this: StepVisualHArray1OfDraughtingCalloutElement): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_HArray1OfDraughtingCalloutElement.hxx".}













































