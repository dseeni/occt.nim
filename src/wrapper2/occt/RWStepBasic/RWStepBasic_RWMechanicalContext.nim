##  Created on: 1996-07-24
##  Created by: Frederic MAUPAS
##  Copyright (c) 1996-1999 Matra Datavision
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
discard "forward decl of StepBasic_MechanicalContext"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWMechanicalContext* {.importcpp: "RWStepBasic_RWMechanicalContext", header: "RWStepBasic_RWMechanicalContext.hxx",
                                   bycopy.} = object


proc constructRWStepBasicRWMechanicalContext*(): RWStepBasicRWMechanicalContext {.
    constructor, importcpp: "RWStepBasic_RWMechanicalContext(@)",
    header: "RWStepBasic_RWMechanicalContext.hxx".}
proc readStep*(this: RWStepBasicRWMechanicalContext;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicMechanicalContext]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWMechanicalContext.hxx".}
proc writeStep*(this: RWStepBasicRWMechanicalContext; sw: var StepDataStepWriter;
               ent: Handle[StepBasicMechanicalContext]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWMechanicalContext.hxx".}
proc share*(this: RWStepBasicRWMechanicalContext;
           ent: Handle[StepBasicMechanicalContext];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWMechanicalContext.hxx".}

