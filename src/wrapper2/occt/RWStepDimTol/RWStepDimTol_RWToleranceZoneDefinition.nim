##  Created on: 2015-07-13
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

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepDimTol_ToleranceZoneDefinition"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWToleranceZoneDefinition* {.
      importcpp: "RWStepDimTol_RWToleranceZoneDefinition",
      header: "RWStepDimTol_RWToleranceZoneDefinition.hxx", bycopy.} = object ## ! Empty
                                                                         ## constructor


proc constructRWStepDimTolRWToleranceZoneDefinition*(): RWStepDimTolRWToleranceZoneDefinition {.
    constructor, importcpp: "RWStepDimTol_RWToleranceZoneDefinition(@)",
    header: "RWStepDimTol_RWToleranceZoneDefinition.hxx".}
proc readStep*(this: RWStepDimTolRWToleranceZoneDefinition;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolToleranceZoneDefinition]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWToleranceZoneDefinition.hxx".}
proc writeStep*(this: RWStepDimTolRWToleranceZoneDefinition;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolToleranceZoneDefinition]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWToleranceZoneDefinition.hxx".}
proc share*(this: RWStepDimTolRWToleranceZoneDefinition;
           ent: Handle[StepDimTolToleranceZoneDefinition];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWToleranceZoneDefinition.hxx".}

