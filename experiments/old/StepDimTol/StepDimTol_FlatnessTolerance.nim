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

discard "forward decl of StepDimTol_FlatnessTolerance"
discard "forward decl of StepDimTol_FlatnessTolerance"
type
  HandleC1C1* = Handle[StepDimTolFlatnessTolerance]

## ! Representation of STEP entity FlatnessTolerance

type
  StepDimTolFlatnessTolerance* {.importcpp: "StepDimTol_FlatnessTolerance",
                                header: "StepDimTol_FlatnessTolerance.hxx", bycopy.} = object of StepDimTolGeometricTolerance ##
                                                                                                                       ## !
                                                                                                                       ## Empty
                                                                                                                       ## constructor


proc constructStepDimTolFlatnessTolerance*(): StepDimTolFlatnessTolerance {.
    constructor, importcpp: "StepDimTol_FlatnessTolerance(@)",
    header: "StepDimTol_FlatnessTolerance.hxx".}
type
  StepDimTolFlatnessTolerancebaseType* = StepDimTolGeometricTolerance

proc getTypeName*(): cstring {.importcpp: "StepDimTol_FlatnessTolerance::get_type_name(@)",
                            header: "StepDimTol_FlatnessTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_FlatnessTolerance::get_type_descriptor(@)",
    header: "StepDimTol_FlatnessTolerance.hxx".}
proc dynamicType*(this: StepDimTolFlatnessTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_FlatnessTolerance.hxx".}