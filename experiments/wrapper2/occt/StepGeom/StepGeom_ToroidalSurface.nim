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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StepGeom_ToroidalSurface"
discard "forward decl of StepGeom_ToroidalSurface"
type
  HandleStepGeomToroidalSurface* = Handle[StepGeomToroidalSurface]
  StepGeomToroidalSurface* {.importcpp: "StepGeom_ToroidalSurface",
                            header: "StepGeom_ToroidalSurface.hxx", bycopy.} = object of StepGeomElementarySurface ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## ToroidalSurface


proc constructStepGeomToroidalSurface*(): StepGeomToroidalSurface {.constructor,
    importcpp: "StepGeom_ToroidalSurface(@)",
    header: "StepGeom_ToroidalSurface.hxx".}
proc init*(this: var StepGeomToroidalSurface;
          aName: Handle[TCollectionHAsciiString];
          aPosition: Handle[StepGeomAxis2Placement3d]; aMajorRadius: float;
          aMinorRadius: float) {.importcpp: "Init",
                               header: "StepGeom_ToroidalSurface.hxx".}
proc setMajorRadius*(this: var StepGeomToroidalSurface; aMajorRadius: float) {.
    importcpp: "SetMajorRadius", header: "StepGeom_ToroidalSurface.hxx".}
proc majorRadius*(this: StepGeomToroidalSurface): float {.noSideEffect,
    importcpp: "MajorRadius", header: "StepGeom_ToroidalSurface.hxx".}
proc setMinorRadius*(this: var StepGeomToroidalSurface; aMinorRadius: float) {.
    importcpp: "SetMinorRadius", header: "StepGeom_ToroidalSurface.hxx".}
proc minorRadius*(this: StepGeomToroidalSurface): float {.noSideEffect,
    importcpp: "MinorRadius", header: "StepGeom_ToroidalSurface.hxx".}
type
  StepGeomToroidalSurfacebaseType* = StepGeomElementarySurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_ToroidalSurface::get_type_name(@)",
                            header: "StepGeom_ToroidalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_ToroidalSurface::get_type_descriptor(@)",
    header: "StepGeom_ToroidalSurface.hxx".}
proc dynamicType*(this: StepGeomToroidalSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_ToroidalSurface.hxx".}
