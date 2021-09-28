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

discard "forward decl of StepBasic_PlaneAngleMeasureWithUnit"
discard "forward decl of StepBasic_PlaneAngleMeasureWithUnit"
type
  HandleC1C1* = Handle[StepBasicPlaneAngleMeasureWithUnit]
  StepBasicPlaneAngleMeasureWithUnit* {.importcpp: "StepBasic_PlaneAngleMeasureWithUnit", header: "StepBasic_PlaneAngleMeasureWithUnit.hxx",
                                       bycopy.} = object of StepBasicMeasureWithUnit ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## a
                                                                                ## PlaneAngleMeasureWithUnit


proc constructStepBasicPlaneAngleMeasureWithUnit*(): StepBasicPlaneAngleMeasureWithUnit {.
    constructor, importcpp: "StepBasic_PlaneAngleMeasureWithUnit(@)",
    header: "StepBasic_PlaneAngleMeasureWithUnit.hxx".}
type
  StepBasicPlaneAngleMeasureWithUnitbaseType* = StepBasicMeasureWithUnit

proc getTypeName*(): cstring {.importcpp: "StepBasic_PlaneAngleMeasureWithUnit::get_type_name(@)",
                            header: "StepBasic_PlaneAngleMeasureWithUnit.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_PlaneAngleMeasureWithUnit::get_type_descriptor(@)",
    header: "StepBasic_PlaneAngleMeasureWithUnit.hxx".}
proc dynamicType*(this: StepBasicPlaneAngleMeasureWithUnit): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_PlaneAngleMeasureWithUnit.hxx".}

























