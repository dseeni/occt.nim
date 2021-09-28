##  Created on: 1994-06-17
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepBasic_ConversionBasedUnitAndSolidAngleUnit"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWConversionBasedUnitAndSolidAngleUnit* {.
      importcpp: "RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit",
      header: "RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit.hxx", bycopy.} = object


proc constructRWStepBasicRWConversionBasedUnitAndSolidAngleUnit*(): RWStepBasicRWConversionBasedUnitAndSolidAngleUnit {.
    constructor,
    importcpp: "RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit(@)",
    header: "RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit.hxx".}
proc readStep*(this: RWStepBasicRWConversionBasedUnitAndSolidAngleUnit;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicConversionBasedUnitAndSolidAngleUnit]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit.hxx".}
proc writeStep*(this: RWStepBasicRWConversionBasedUnitAndSolidAngleUnit;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicConversionBasedUnitAndSolidAngleUnit]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit.hxx".}
proc share*(this: RWStepBasicRWConversionBasedUnitAndSolidAngleUnit;
           ent: Handle[StepBasicConversionBasedUnitAndSolidAngleUnit];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWConversionBasedUnitAndSolidAngleUnit.hxx".}

























