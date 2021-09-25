##  Created on: 1997-03-26
##  Created by: Administrateur Atelier XSTEP
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of StepVisual_CameraImage3dWithScale"
discard "forward decl of StepVisual_CameraImage3dWithScale"
type
  HandleStepVisualCameraImage3dWithScale* = Handle[
      StepVisualCameraImage3dWithScale]
  StepVisualCameraImage3dWithScale* {.importcpp: "StepVisual_CameraImage3dWithScale", header: "StepVisual_CameraImage3dWithScale.hxx",
                                     bycopy.} = object of StepVisualCameraImage


proc constructStepVisualCameraImage3dWithScale*(): StepVisualCameraImage3dWithScale {.
    constructor, importcpp: "StepVisual_CameraImage3dWithScale(@)",
    header: "StepVisual_CameraImage3dWithScale.hxx".}
type
  StepVisualCameraImage3dWithScalebaseType* = StepVisualCameraImage

proc getTypeName*(): cstring {.importcpp: "StepVisual_CameraImage3dWithScale::get_type_name(@)",
                            header: "StepVisual_CameraImage3dWithScale.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CameraImage3dWithScale::get_type_descriptor(@)",
    header: "StepVisual_CameraImage3dWithScale.hxx".}
proc dynamicType*(this: StepVisualCameraImage3dWithScale): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CameraImage3dWithScale.hxx".}
