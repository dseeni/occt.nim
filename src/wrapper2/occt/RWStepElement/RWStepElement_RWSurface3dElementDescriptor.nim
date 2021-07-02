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
discard "forward decl of StepElement_Surface3dElementDescriptor"
discard "forward decl of StepData_StepWriter"
discard "forward decl of Interface_EntityIterator"
type
  RWStepElementRWSurface3dElementDescriptor* {.
      importcpp: "RWStepElement_RWSurface3dElementDescriptor",
      header: "RWStepElement_RWSurface3dElementDescriptor.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructRWStepElementRWSurface3dElementDescriptor*(): RWStepElementRWSurface3dElementDescriptor {.
    constructor, importcpp: "RWStepElement_RWSurface3dElementDescriptor(@)",
    header: "RWStepElement_RWSurface3dElementDescriptor.hxx".}
proc readStep*(this: RWStepElementRWSurface3dElementDescriptor;
              data: Handle[StepDataStepReaderData]; num: StandardInteger;
              ach: var Handle[InterfaceCheck];
              ent: Handle[StepElementSurface3dElementDescriptor]) {.noSideEffect,
    importcpp: "ReadStep",
    header: "RWStepElement_RWSurface3dElementDescriptor.hxx".}
proc writeStep*(this: RWStepElementRWSurface3dElementDescriptor;
               sw: var StepDataStepWriter;
               ent: Handle[StepElementSurface3dElementDescriptor]) {.noSideEffect,
    importcpp: "WriteStep",
    header: "RWStepElement_RWSurface3dElementDescriptor.hxx".}
proc share*(this: RWStepElementRWSurface3dElementDescriptor;
           ent: Handle[StepElementSurface3dElementDescriptor];
           iter: var InterfaceEntityIterator) {.noSideEffect, importcpp: "Share",
    header: "RWStepElement_RWSurface3dElementDescriptor.hxx".}

