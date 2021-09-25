##  Created on : Thu May 14 15:13:19 2020
##  Created by: Igor KHOZHANOV
##  Generator:	Express (EXPRESS -> CASCADE/XSTEP Translator) V2.0
##  Copyright (c) Open CASCADE 2020
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
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of StepVisual_SurfaceStyleRenderingWithProperties"
type
  RWStepVisualRWSurfaceStyleRenderingWithProperties* {.
      importcpp: "RWStepVisual_RWSurfaceStyleRenderingWithProperties",
      header: "RWStepVisual_RWSurfaceStyleRenderingWithProperties.hxx", bycopy.} = object


proc constructRWStepVisualRWSurfaceStyleRenderingWithProperties*(): RWStepVisualRWSurfaceStyleRenderingWithProperties {.
    constructor,
    importcpp: "RWStepVisual_RWSurfaceStyleRenderingWithProperties(@)",
    header: "RWStepVisual_RWSurfaceStyleRenderingWithProperties.hxx".}
proc readStep*(this: RWStepVisualRWSurfaceStyleRenderingWithProperties;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepVisualSurfaceStyleRenderingWithProperties]) {.
    noSideEffect, importcpp: "ReadStep",
    header: "RWStepVisual_RWSurfaceStyleRenderingWithProperties.hxx".}
proc writeStep*(this: RWStepVisualRWSurfaceStyleRenderingWithProperties;
               sw: var StepDataStepWriter;
               ent: Handle[StepVisualSurfaceStyleRenderingWithProperties]) {.
    noSideEffect, importcpp: "WriteStep",
    header: "RWStepVisual_RWSurfaceStyleRenderingWithProperties.hxx".}
proc share*(this: RWStepVisualRWSurfaceStyleRenderingWithProperties;
           ent: Handle[StepVisualSurfaceStyleRenderingWithProperties];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepVisual_RWSurfaceStyleRenderingWithProperties.hxx".}
