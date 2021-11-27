##  Created on: 2015-07-07
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
discard "forward decl of StepAP242_IdAttribute"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepAP242RWIdAttribute* {.importcpp: "RWStepAP242_RWIdAttribute",
                             header: "RWStepAP242_RWIdAttribute.hxx", bycopy.} = object


proc constructRWStepAP242RWIdAttribute*(): RWStepAP242RWIdAttribute {.constructor,
    importcpp: "RWStepAP242_RWIdAttribute(@)",
    header: "RWStepAP242_RWIdAttribute.hxx".}
proc readStep*(this: RWStepAP242RWIdAttribute;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck]; ent: Handle[StepAP242IdAttribute]) {.
    noSideEffect, importcpp: "ReadStep", header: "RWStepAP242_RWIdAttribute.hxx".}
proc writeStep*(this: RWStepAP242RWIdAttribute; sw: var StepDataStepWriter;
               ent: Handle[StepAP242IdAttribute]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepAP242_RWIdAttribute.hxx".}
proc share*(this: RWStepAP242RWIdAttribute; ent: Handle[StepAP242IdAttribute];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepAP242_RWIdAttribute.hxx".}
























