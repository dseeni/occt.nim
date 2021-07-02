##  Created on: 2003-02-04
##  Created by: data exchange team
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
discard "forward decl of StepFEA_ElementGeometricRelationship"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepFEA_RWElementGeometricRelationship* {.
      importcpp: "RWStepFEA_RWElementGeometricRelationship",
      header: "RWStepFEA_RWElementGeometricRelationship.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor


proc constructRWStepFEA_RWElementGeometricRelationship*(): RWStepFEA_RWElementGeometricRelationship {.
    constructor, importcpp: "RWStepFEA_RWElementGeometricRelationship(@)",
    header: "RWStepFEA_RWElementGeometricRelationship.hxx".}
proc readStep*(this: RWStepFEA_RWElementGeometricRelationship;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepFEA_ElementGeometricRelationship]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepFEA_RWElementGeometricRelationship.hxx".}
proc writeStep*(this: RWStepFEA_RWElementGeometricRelationship;
               sw: var StepDataStepWriter;
               ent: Handle[StepFEA_ElementGeometricRelationship]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepFEA_RWElementGeometricRelationship.hxx".}
proc share*(this: RWStepFEA_RWElementGeometricRelationship;
           ent: Handle[StepFEA_ElementGeometricRelationship];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepFEA_RWElementGeometricRelationship.hxx".}

