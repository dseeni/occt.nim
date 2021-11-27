##  Created on: 2015-07-10
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

discard "forward decl of StepRepr_AllAroundShapeAspect"
discard "forward decl of StepRepr_AllAroundShapeAspect"
type
  HandleC1C1* = Handle[StepReprAllAroundShapeAspect]

## ! Added for Dimensional Tolerances

type
  StepReprAllAroundShapeAspect* {.importcpp: "StepRepr_AllAroundShapeAspect",
                                 header: "StepRepr_AllAroundShapeAspect.hxx",
                                 bycopy.} = object of StepReprContinuosShapeAspect


proc constructStepReprAllAroundShapeAspect*(): StepReprAllAroundShapeAspect {.
    constructor, importcpp: "StepRepr_AllAroundShapeAspect(@)",
    header: "StepRepr_AllAroundShapeAspect.hxx".}
type
  StepReprAllAroundShapeAspectbaseType* = StepReprContinuosShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_AllAroundShapeAspect::get_type_name(@)",
                            header: "StepRepr_AllAroundShapeAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_AllAroundShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_AllAroundShapeAspect.hxx".}
proc dynamicType*(this: StepReprAllAroundShapeAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_AllAroundShapeAspect.hxx".}