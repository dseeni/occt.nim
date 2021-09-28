##  Created on: 2000-04-18
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_AngularLocation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWAngularLocation* {.importcpp: "RWStepShape_RWAngularLocation",
                                 header: "RWStepShape_RWAngularLocation.hxx",
                                 bycopy.} = object ## ! Empty constructor


proc constructRWStepShapeRWAngularLocation*(): RWStepShapeRWAngularLocation {.
    constructor, importcpp: "RWStepShape_RWAngularLocation(@)",
    header: "RWStepShape_RWAngularLocation.hxx".}
proc readStep*(this: RWStepShapeRWAngularLocation;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeAngularLocation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWAngularLocation.hxx".}
proc writeStep*(this: RWStepShapeRWAngularLocation; sw: var StepDataStepWriter;
               ent: Handle[StepShapeAngularLocation]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepShape_RWAngularLocation.hxx".}
proc share*(this: RWStepShapeRWAngularLocation;
           ent: Handle[StepShapeAngularLocation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWAngularLocation.hxx".}

























