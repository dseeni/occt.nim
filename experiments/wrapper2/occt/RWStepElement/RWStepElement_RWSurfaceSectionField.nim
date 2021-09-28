##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
discard "forward decl of StepElement_SurfaceSectionField"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepElementRWSurfaceSectionField* {.importcpp: "RWStepElement_RWSurfaceSectionField", header: "RWStepElement_RWSurfaceSectionField.hxx",
                                       bycopy.} = object ## ! Empty constructor


proc constructRWStepElementRWSurfaceSectionField*(): RWStepElementRWSurfaceSectionField {.
    constructor, importcpp: "RWStepElement_RWSurfaceSectionField(@)",
    header: "RWStepElement_RWSurfaceSectionField.hxx".}
proc readStep*(this: RWStepElementRWSurfaceSectionField;
              data: Handle[StepDataStepReaderData]; num: cint;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepElementSurfaceSectionField]) {.noSideEffect,
    importcpp: "ReadStep", header: "RWStepElement_RWSurfaceSectionField.hxx".}
proc writeStep*(this: RWStepElementRWSurfaceSectionField;
               sw: var StepDataStepWriter;
               ent: Handle[StepElementSurfaceSectionField]) {.noSideEffect,
    importcpp: "WriteStep", header: "RWStepElement_RWSurfaceSectionField.hxx".}
proc share*(this: RWStepElementRWSurfaceSectionField;
           ent: Handle[StepElementSurfaceSectionField];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepElement_RWSurfaceSectionField.hxx".}

























