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
discard "forward decl of StepGeom_Axis2Placement"
discard "forward decl of StepGeom_Parabola"
discard "forward decl of StepGeom_Parabola"
type
  HandleStepGeomParabola* = Handle[StepGeomParabola]
  StepGeomParabola* {.importcpp: "StepGeom_Parabola",
                     header: "StepGeom_Parabola.hxx", bycopy.} = object of StepGeomConic ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## a
                                                                                  ## Parabola


proc constructStepGeomParabola*(): StepGeomParabola {.constructor,
    importcpp: "StepGeom_Parabola(@)", header: "StepGeom_Parabola.hxx".}
proc init*(this: var StepGeomParabola; aName: Handle[TCollectionHAsciiString];
          aPosition: StepGeomAxis2Placement; aFocalDist: float) {.importcpp: "Init",
    header: "StepGeom_Parabola.hxx".}
proc setFocalDist*(this: var StepGeomParabola; aFocalDist: float) {.
    importcpp: "SetFocalDist", header: "StepGeom_Parabola.hxx".}
proc focalDist*(this: StepGeomParabola): float {.noSideEffect,
    importcpp: "FocalDist", header: "StepGeom_Parabola.hxx".}
type
  StepGeomParabolabaseType* = StepGeomConic

proc getTypeName*(): cstring {.importcpp: "StepGeom_Parabola::get_type_name(@)",
                            header: "StepGeom_Parabola.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Parabola::get_type_descriptor(@)",
    header: "StepGeom_Parabola.hxx".}
proc dynamicType*(this: StepGeomParabola): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Parabola.hxx".}
