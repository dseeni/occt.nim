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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StepData_StepReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of StepDimTol_SymmetryTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTol_RWSymmetryTolerance* {.importcpp: "RWStepDimTol_RWSymmetryTolerance", header: "RWStepDimTol_RWSymmetryTolerance.hxx",
                                     bycopy.} = object ## ! Empty constructor


proc constructRWStepDimTol_RWSymmetryTolerance*(): RWStepDimTol_RWSymmetryTolerance {.
    constructor, importcpp: "RWStepDimTol_RWSymmetryTolerance(@)",
    header: "RWStepDimTol_RWSymmetryTolerance.hxx".}
proc ReadStep*(this: RWStepDimTol_RWSymmetryTolerance;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepDimTol_SymmetryTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWSymmetryTolerance.hxx".}
proc WriteStep*(this: RWStepDimTol_RWSymmetryTolerance;
               SW: var StepData_StepWriter;
               ent: handle[StepDimTol_SymmetryTolerance]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWSymmetryTolerance.hxx".}
proc Share*(this: RWStepDimTol_RWSymmetryTolerance;
           ent: handle[StepDimTol_SymmetryTolerance];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWSymmetryTolerance.hxx".}