##  Created on: 2003-01-28
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
discard "forward decl of StepBasic_DocumentProductEquivalence"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepBasicRWDocumentProductEquivalence* {.
      importcpp: "RWStepBasic_RWDocumentProductEquivalence",
      header: "RWStepBasic_RWDocumentProductEquivalence.hxx", bycopy.} = object ## ! Empty
                                                                           ## constructor


proc constructRWStepBasicRWDocumentProductEquivalence*(): RWStepBasicRWDocumentProductEquivalence {.
    constructor, importcpp: "RWStepBasic_RWDocumentProductEquivalence(@)",
    header: "RWStepBasic_RWDocumentProductEquivalence.hxx".}
proc readStep*(this: RWStepBasicRWDocumentProductEquivalence;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepBasicDocumentProductEquivalence]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepBasic_RWDocumentProductEquivalence.hxx".}
proc writeStep*(this: RWStepBasicRWDocumentProductEquivalence;
               sw: var StepDataStepWriter;
               ent: Handle[StepBasicDocumentProductEquivalence]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepBasic_RWDocumentProductEquivalence.hxx".}
proc share*(this: RWStepBasicRWDocumentProductEquivalence;
           ent: Handle[StepBasicDocumentProductEquivalence];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepBasic_RWDocumentProductEquivalence.hxx".}
























