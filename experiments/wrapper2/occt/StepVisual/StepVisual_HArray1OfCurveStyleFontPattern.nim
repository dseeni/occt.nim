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

type
  StepVisualHArray1OfCurveStyleFontPattern* {.
      importcpp: "StepVisual_HArray1OfCurveStyleFontPattern",
      header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx", bycopy.} = object of StepVisualArray1OfCurveStyleFontPattern


proc constructStepVisualHArray1OfCurveStyleFontPattern*(theLower: int;
    theUpper: int): StepVisualHArray1OfCurveStyleFontPattern {.constructor,
    importcpp: "StepVisual_HArray1OfCurveStyleFontPattern(@)",
    header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx".}
proc constructStepVisualHArray1OfCurveStyleFontPattern*(theLower: int;
    theUpper: int; theValue: ValueType): StepVisualHArray1OfCurveStyleFontPattern {.
    constructor, importcpp: "StepVisual_HArray1OfCurveStyleFontPattern(@)",
    header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx".}
proc constructStepVisualHArray1OfCurveStyleFontPattern*(
    theOther: StepVisualArray1OfCurveStyleFontPattern): StepVisualHArray1OfCurveStyleFontPattern {.
    constructor, importcpp: "StepVisual_HArray1OfCurveStyleFontPattern(@)",
    header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx".}
proc array1*(this: StepVisualHArray1OfCurveStyleFontPattern): StepVisualArray1OfCurveStyleFontPattern {.
    noSideEffect, importcpp: "Array1",
    header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx".}
proc changeArray1*(this: var StepVisualHArray1OfCurveStyleFontPattern): var StepVisualArray1OfCurveStyleFontPattern {.
    importcpp: "ChangeArray1",
    header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx".}
type
  StepVisualHArray1OfCurveStyleFontPatternbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepVisual_HArray1OfCurveStyleFontPattern::get_type_name(@)", header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepVisual_HArray1OfCurveStyleFontPattern::get_type_descriptor(@)",
    header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx".}
proc dynamicType*(this: StepVisualHArray1OfCurveStyleFontPattern): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepVisual_HArray1OfCurveStyleFontPattern.hxx".}
