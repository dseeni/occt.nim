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
discard "forward decl of StepRepr_Extension"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWExtension* {.importcpp: "RWStepRepr_RWExtension",
                          header: "RWStepRepr_RWExtension.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructRWStepReprRWExtension*(): RWStepReprRWExtension {.constructor,
    importcpp: "RWStepRepr_RWExtension(@)", header: "RWStepRepr_RWExtension.hxx".}
proc readStep*(this: RWStepReprRWExtension; data: Handle[StepDataStepReaderData];
              num: int; ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprExtension]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWExtension.hxx".}
proc writeStep*(this: RWStepReprRWExtension; sw: var StepDataStepWriter;
               ent: Handle[StepReprExtension]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWExtension.hxx".}
proc share*(this: RWStepReprRWExtension; ent: Handle[StepReprExtension];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWExtension.hxx".}
