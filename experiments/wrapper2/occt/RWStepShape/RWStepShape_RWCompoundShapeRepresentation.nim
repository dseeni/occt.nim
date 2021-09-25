##  Created on: 2001-12-28
##  Created by: Andrey BETENEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of StepShape_CompoundShapeRepresentation"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepShapeRWCompoundShapeRepresentation* {.
      importcpp: "RWStepShape_RWCompoundShapeRepresentation",
      header: "RWStepShape_RWCompoundShapeRepresentation.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor


proc constructRWStepShapeRWCompoundShapeRepresentation*(): RWStepShapeRWCompoundShapeRepresentation {.
    constructor, importcpp: "RWStepShape_RWCompoundShapeRepresentation(@)",
    header: "RWStepShape_RWCompoundShapeRepresentation.hxx".}
proc readStep*(this: RWStepShapeRWCompoundShapeRepresentation;
              data: Handle[StepDataStepReaderData]; num: int;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepShapeCompoundShapeRepresentation]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepShape_RWCompoundShapeRepresentation.hxx".}
proc writeStep*(this: RWStepShapeRWCompoundShapeRepresentation;
               sw: var StepDataStepWriter;
               ent: Handle[StepShapeCompoundShapeRepresentation]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepShape_RWCompoundShapeRepresentation.hxx".}
proc share*(this: RWStepShapeRWCompoundShapeRepresentation;
           ent: Handle[StepShapeCompoundShapeRepresentation];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepShape_RWCompoundShapeRepresentation.hxx".}
