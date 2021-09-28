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
  StepGeomHArray1OfTrimmingSelect* {.importcpp: "StepGeom_HArray1OfTrimmingSelect", header: "StepGeom_HArray1OfTrimmingSelect.hxx",
                                    bycopy.} = object of StepGeomArray1OfTrimmingSelect


proc constructStepGeomHArray1OfTrimmingSelect*(theLower: int; theUpper: int): StepGeomHArray1OfTrimmingSelect {.
    constructor, importcpp: "StepGeom_HArray1OfTrimmingSelect(@)",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc constructStepGeomHArray1OfTrimmingSelect*(theLower: int; theUpper: int;
    theValue: ValueType): StepGeomHArray1OfTrimmingSelect {.constructor,
    importcpp: "StepGeom_HArray1OfTrimmingSelect(@)",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc constructStepGeomHArray1OfTrimmingSelect*(
    theOther: StepGeomArray1OfTrimmingSelect): StepGeomHArray1OfTrimmingSelect {.
    constructor, importcpp: "StepGeom_HArray1OfTrimmingSelect(@)",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc array1*(this: StepGeomHArray1OfTrimmingSelect): StepGeomArray1OfTrimmingSelect {.
    noSideEffect, importcpp: "Array1",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc changeArray1*(this: var StepGeomHArray1OfTrimmingSelect): var StepGeomArray1OfTrimmingSelect {.
    importcpp: "ChangeArray1", header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
type
  StepGeomHArray1OfTrimmingSelectbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "StepGeom_HArray1OfTrimmingSelect::get_type_name(@)",
                            header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_HArray1OfTrimmingSelect::get_type_descriptor(@)",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}
proc dynamicType*(this: StepGeomHArray1OfTrimmingSelect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_HArray1OfTrimmingSelect.hxx".}














































