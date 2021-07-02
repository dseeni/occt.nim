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
discard "forward decl of StepBasic_ActionAssignment"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWActionAssignment* {.importcpp: "RWStepBasic_RWActionAssignment",
                                  header: "RWStepBasic_RWActionAssignment.hxx",
                                  bycopy.} = object ## ! Empty constructor


proc constructRWStepBasicRWActionAssignment*(): RWStepBasicRWActionAssignment {.
    constructor, importcpp: "RWStepBasic_RWActionAssignment(@)",
    header: "RWStepBasic_RWActionAssignment.hxx".}
proc readStep*(this: RWStepBasicRWActionAssignment;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicActionAssignment]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWActionAssignment.hxx".}
proc writeStep*(this: RWStepBasicRWActionAssignment; sw: var StepDataStepWriter;
               ent: Handle[StepBasicActionAssignment]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWActionAssignment.hxx".}
proc share*(this: RWStepBasicRWActionAssignment;
           ent: Handle[StepBasicActionAssignment];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWActionAssignment.hxx".}

