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
discard "forward decl of StepRepr_ShapeAspectRelationship"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepReprRWShapeAspectRelationship* {.importcpp: "RWStepRepr_RWShapeAspectRelationship", header: "RWStepRepr_RWShapeAspectRelationship.hxx",
                                        bycopy.} = object ## ! Empty constructor


proc constructRWStepReprRWShapeAspectRelationship*(): RWStepReprRWShapeAspectRelationship {.
    constructor, importcpp: "RWStepRepr_RWShapeAspectRelationship(@)",
    header: "RWStepRepr_RWShapeAspectRelationship.hxx".}
proc readStep*(this: RWStepReprRWShapeAspectRelationship;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepReprShapeAspectRelationship]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepRepr_RWShapeAspectRelationship.hxx".}
proc writeStep*(this: RWStepReprRWShapeAspectRelationship;
               sw: var StepDataStepWriter;
               ent: Handle[StepReprShapeAspectRelationship]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepRepr_RWShapeAspectRelationship.hxx".}
proc share*(this: RWStepReprRWShapeAspectRelationship;
           ent: Handle[StepReprShapeAspectRelationship];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepRepr_RWShapeAspectRelationship.hxx".}
























