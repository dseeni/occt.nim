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

discard "forward decl of StepRepr_BetweenShapeAspect"
discard "forward decl of StepRepr_BetweenShapeAspect"
type
  HandleStepReprBetweenShapeAspect* = Handle[StepReprBetweenShapeAspect]

## ! Added for Dimensional Tolerances

type
  StepReprBetweenShapeAspect* {.importcpp: "StepRepr_BetweenShapeAspect",
                               header: "StepRepr_BetweenShapeAspect.hxx", bycopy.} = object of StepReprContinuosShapeAspect


proc constructStepReprBetweenShapeAspect*(): StepReprBetweenShapeAspect {.
    constructor, importcpp: "StepRepr_BetweenShapeAspect(@)",
    header: "StepRepr_BetweenShapeAspect.hxx".}
type
  StepReprBetweenShapeAspectbaseType* = StepReprContinuosShapeAspect

proc getTypeName*(): cstring {.importcpp: "StepRepr_BetweenShapeAspect::get_type_name(@)",
                            header: "StepRepr_BetweenShapeAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_BetweenShapeAspect::get_type_descriptor(@)",
    header: "StepRepr_BetweenShapeAspect.hxx".}
proc dynamicType*(this: StepReprBetweenShapeAspect): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_BetweenShapeAspect.hxx".}
