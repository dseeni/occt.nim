##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepVisual_SurfaceSideStyle"
discard "forward decl of StepVisual_SurfaceStyleUsage"
discard "forward decl of StepVisual_SurfaceStyleUsage"
type
  HandleStepVisualSurfaceStyleUsage* = Handle[StepVisualSurfaceStyleUsage]
  StepVisualSurfaceStyleUsage* {.importcpp: "StepVisual_SurfaceStyleUsage",
                                header: "StepVisual_SurfaceStyleUsage.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## SurfaceStyleUsage


proc constructStepVisualSurfaceStyleUsage*(): StepVisualSurfaceStyleUsage {.
    constructor, importcpp: "StepVisual_SurfaceStyleUsage(@)",
    header: "StepVisual_SurfaceStyleUsage.hxx".}
proc init*(this: var StepVisualSurfaceStyleUsage; aSide: StepVisualSurfaceSide;
          aStyle: Handle[StepVisualSurfaceSideStyle]) {.importcpp: "Init",
    header: "StepVisual_SurfaceStyleUsage.hxx".}
proc setSide*(this: var StepVisualSurfaceStyleUsage; aSide: StepVisualSurfaceSide) {.
    importcpp: "SetSide", header: "StepVisual_SurfaceStyleUsage.hxx".}
proc side*(this: StepVisualSurfaceStyleUsage): StepVisualSurfaceSide {.noSideEffect,
    importcpp: "Side", header: "StepVisual_SurfaceStyleUsage.hxx".}
proc setStyle*(this: var StepVisualSurfaceStyleUsage;
              aStyle: Handle[StepVisualSurfaceSideStyle]) {.importcpp: "SetStyle",
    header: "StepVisual_SurfaceStyleUsage.hxx".}
proc style*(this: StepVisualSurfaceStyleUsage): Handle[StepVisualSurfaceSideStyle] {.
    noSideEffect, importcpp: "Style", header: "StepVisual_SurfaceStyleUsage.hxx".}
type
  StepVisualSurfaceStyleUsagebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_SurfaceStyleUsage::get_type_name(@)",
                            header: "StepVisual_SurfaceStyleUsage.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_SurfaceStyleUsage::get_type_descriptor(@)",
    header: "StepVisual_SurfaceStyleUsage.hxx".}
proc dynamicType*(this: StepVisualSurfaceStyleUsage): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_SurfaceStyleUsage.hxx".}
