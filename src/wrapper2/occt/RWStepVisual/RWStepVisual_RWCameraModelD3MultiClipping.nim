##  Created on: 2016-10-25
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
discard "forward decl of StepVisual_CameraModelD3MultiClipping"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepVisual_RWCameraModelD3MultiClipping* {.
      importcpp: "RWStepVisual_RWCameraModelD3MultiClipping",
      header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx", bycopy.} = object


proc constructRWStepVisual_RWCameraModelD3MultiClipping*(): RWStepVisual_RWCameraModelD3MultiClipping {.
    constructor, importcpp: "RWStepVisual_RWCameraModelD3MultiClipping(@)",
    header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx".}
proc ReadStep*(this: RWStepVisual_RWCameraModelD3MultiClipping;
              data: handle[StepData_StepReaderData]; num: Standard_Integer;
              ach: var handle[Interface_Check];
              ent: handle[StepVisual_CameraModelD3MultiClipping]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx".}
proc WriteStep*(this: RWStepVisual_RWCameraModelD3MultiClipping;
               SW: var StepData_StepWriter;
               ent: handle[StepVisual_CameraModelD3MultiClipping]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx".}
proc Share*(this: RWStepVisual_RWCameraModelD3MultiClipping;
           ent: handle[StepVisual_CameraModelD3MultiClipping];
           iter: var Interface_EntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWCameraModelD3MultiClipping.hxx".}