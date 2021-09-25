##  Created on: 1999-11-26
##  Created by: Andrey BETENEV
##  Copyright (c) 1999 Matra Datavision
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
discard "forward decl of StepBasic_VersionedActionRequest"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWVersionedActionRequest* {.importcpp: "RWStepBasic_RWVersionedActionRequest", header: "RWStepBasic_RWVersionedActionRequest.hxx",
                                        bycopy.} = object ## ! Empty constructor


proc constructRWStepBasicRWVersionedActionRequest*(): RWStepBasicRWVersionedActionRequest {.
    constructor, importcpp: "RWStepBasic_RWVersionedActionRequest(@)",
    header: "RWStepBasic_RWVersionedActionRequest.hxx".}
proc readStep*(this: RWStepBasicRWVersionedActionRequest;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicVersionedActionRequest]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWVersionedActionRequest.hxx".}
proc writeStep*(this: RWStepBasicRWVersionedActionRequest;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicVersionedActionRequest]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWVersionedActionRequest.hxx".}
proc share*(this: RWStepBasicRWVersionedActionRequest;
           ent: Handle[StepBasicVersionedActionRequest];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWVersionedActionRequest.hxx".}
