##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of StepDimTol_CoaxialityTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWCoaxialityTolerance* {.importcpp: "RWStepDimTol_RWCoaxialityTolerance", header: "RWStepDimTol_RWCoaxialityTolerance.hxx",
                                      bycopy.} = object ## ! Empty constructor


proc constructRWStepDimTolRWCoaxialityTolerance*(): RWStepDimTolRWCoaxialityTolerance {.
    constructor, importcpp: "RWStepDimTol_RWCoaxialityTolerance(@)",
    header: "RWStepDimTol_RWCoaxialityTolerance.hxx".}
proc readStep*(this: RWStepDimTolRWCoaxialityTolerance;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolCoaxialityTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWCoaxialityTolerance.hxx".}
proc writeStep*(this: RWStepDimTolRWCoaxialityTolerance;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolCoaxialityTolerance]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWCoaxialityTolerance.hxx".}
proc share*(this: RWStepDimTolRWCoaxialityTolerance;
           ent: Handle[StepDimTolCoaxialityTolerance];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWCoaxialityTolerance.hxx".}

