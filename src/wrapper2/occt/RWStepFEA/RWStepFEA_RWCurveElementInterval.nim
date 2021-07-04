##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepFEA_CurveElementInterval"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepFEA_RWCurveElementInterval* {.importcpp: "RWStepFEA_RWCurveElementInterval", header: "RWStepFEA_RWCurveElementInterval.hxx",
                                     bycopy.} = object ## ! Empty constructor


proc constructRWStepFEA_RWCurveElementInterval*(): RWStepFEA_RWCurveElementInterval {.
    constructor, importcpp: "RWStepFEA_RWCurveElementInterval(@)",
    header: "RWStepFEA_RWCurveElementInterval.hxx".}
proc ReadStep*(this: RWStepFEA_RWCurveElementInterval;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepFEA_CurveElementInterval]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepFEA_RWCurveElementInterval.hxx".}
proc WriteStep*(this: RWStepFEA_RWCurveElementInterval;
               SW: var StepData_StepWriter;
               ent: handle[StepFEA_CurveElementInterval]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepFEA_RWCurveElementInterval.hxx".}
proc Share*(this: RWStepFEA_RWCurveElementInterval;
           ent: handle[StepFEA_CurveElementInterval];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepFEA_RWCurveElementInterval.hxx".}