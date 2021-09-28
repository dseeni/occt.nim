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
  StepAP214HArray1OfAutoDesignDateAndTimeItem* {.
      importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem",
      header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx", bycopy.} = object of StepAP214Array1OfAutoDesignDateAndTimeItem


proc constructStepAP214HArray1OfAutoDesignDateAndTimeItem*(theLower: int;
    theUpper: int): StepAP214HArray1OfAutoDesignDateAndTimeItem {.constructor,
    importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc constructStepAP214HArray1OfAutoDesignDateAndTimeItem*(theLower: int;
    theUpper: int; theValue: ValueType): StepAP214HArray1OfAutoDesignDateAndTimeItem {.
    constructor, importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc constructStepAP214HArray1OfAutoDesignDateAndTimeItem*(
    theOther: StepAP214Array1OfAutoDesignDateAndTimeItem): StepAP214HArray1OfAutoDesignDateAndTimeItem {.
    constructor, importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem(@)",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc array1*(this: StepAP214HArray1OfAutoDesignDateAndTimeItem): StepAP214Array1OfAutoDesignDateAndTimeItem {.
    noSideEffect, importcpp: "Array1",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc changeArray1*(this: var StepAP214HArray1OfAutoDesignDateAndTimeItem): var StepAP214Array1OfAutoDesignDateAndTimeItem {.
    importcpp: "ChangeArray1",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
type
  StepAP214HArray1OfAutoDesignDateAndTimeItembaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem::get_type_name(@)", header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_HArray1OfAutoDesignDateAndTimeItem::get_type_descriptor(@)",
    header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}
proc dynamicType*(this: StepAP214HArray1OfAutoDesignDateAndTimeItem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP214_HArray1OfAutoDesignDateAndTimeItem.hxx".}














































