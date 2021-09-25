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
discard "forward decl of StepDimTol_SurfaceProfileTolerance"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepDimTolRWSurfaceProfileTolerance* {.
      importcpp: "RWStepDimTol_RWSurfaceProfileTolerance",
      header: "RWStepDimTol_RWSurfaceProfileTolerance.hxx", bycopy.} = object ## ! Empty
                                                                         ## constructor


proc constructRWStepDimTolRWSurfaceProfileTolerance*(): RWStepDimTolRWSurfaceProfileTolerance {.
    constructor, importcpp: "RWStepDimTol_RWSurfaceProfileTolerance(@)",
    header: "RWStepDimTol_RWSurfaceProfileTolerance.hxx".}
proc readStep*(this: RWStepDimTolRWSurfaceProfileTolerance;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepDimTolSurfaceProfileTolerance]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepDimTol_RWSurfaceProfileTolerance.hxx".}
proc writeStep*(this: RWStepDimTolRWSurfaceProfileTolerance;
               sw: var StepDataStepWriter;
               ent: Handle[StepDimTolSurfaceProfileTolerance]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepDimTol_RWSurfaceProfileTolerance.hxx".}
proc share*(this: RWStepDimTolRWSurfaceProfileTolerance;
           ent: Handle[StepDimTolSurfaceProfileTolerance];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepDimTol_RWSurfaceProfileTolerance.hxx".}
