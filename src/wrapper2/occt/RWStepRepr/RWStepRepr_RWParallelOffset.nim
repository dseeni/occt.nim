##  Created on: 2015-06-22
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
discard "forward decl of StepRepr_ParallelOffset"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWParallelOffset* {.importcpp: "RWStepRepr_RWParallelOffset",
                               header: "RWStepRepr_RWParallelOffset.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructRWStepReprRWParallelOffset*(): RWStepReprRWParallelOffset {.
    constructor, importcpp: "RWStepRepr_RWParallelOffset(@)",
    header: "RWStepRepr_RWParallelOffset.hxx".}
proc readStep*(this: RWStepReprRWParallelOffset;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepReprParallelOffset]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepRepr_RWParallelOffset.hxx".}
proc writeStep*(this: RWStepReprRWParallelOffset; sw: var StepDataStepWriter;
               ent: Handle[StepReprParallelOffset]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWParallelOffset.hxx".}
proc share*(this: RWStepReprRWParallelOffset; ent: Handle[StepReprParallelOffset];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWParallelOffset.hxx".}

