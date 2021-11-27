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

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_ParametricCurve3dElementCoordinateDirection"
discard "forward decl of StepFEA_ParametricCurve3dElementCoordinateDirection"
type
  HandleC1C1* = Handle[StepFEA_ParametricCurve3dElementCoordinateDirection]

## ! Representation of STEP entity ParametricCurve3dElementCoordinateDirection

type
  StepFEA_ParametricCurve3dElementCoordinateDirection* {.
      importcpp: "StepFEA_ParametricCurve3dElementCoordinateDirection",
      header: "StepFEA_ParametricCurve3dElementCoordinateDirection.hxx", bycopy.} = object of StepFEA_FeaRepresentationItem ##
                                                                                                                     ## !
                                                                                                                     ## Empty
                                                                                                                     ## constructor


proc constructStepFEA_ParametricCurve3dElementCoordinateDirection*(): StepFEA_ParametricCurve3dElementCoordinateDirection {.
    constructor,
    importcpp: "StepFEA_ParametricCurve3dElementCoordinateDirection(@)",
    header: "StepFEA_ParametricCurve3dElementCoordinateDirection.hxx".}
proc init*(this: var StepFEA_ParametricCurve3dElementCoordinateDirection;
          aRepresentationItemName: Handle[TCollectionHAsciiString];
          aOrientation: Handle[StepGeomDirection]) {.importcpp: "Init",
    header: "StepFEA_ParametricCurve3dElementCoordinateDirection.hxx".}
proc orientation*(this: StepFEA_ParametricCurve3dElementCoordinateDirection): Handle[
    StepGeomDirection] {.noSideEffect, importcpp: "Orientation", header: "StepFEA_ParametricCurve3dElementCoordinateDirection.hxx".}
proc setOrientation*(this: var StepFEA_ParametricCurve3dElementCoordinateDirection;
                    orientation: Handle[StepGeomDirection]) {.
    importcpp: "SetOrientation",
    header: "StepFEA_ParametricCurve3dElementCoordinateDirection.hxx".}
type
  StepFEA_ParametricCurve3dElementCoordinateDirectionbaseType* = StepFEA_FeaRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_ParametricCurve3dElementCoordinateDirection::get_type_name(@)", header: "StepFEA_ParametricCurve3dElementCoordinateDirection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepFEA_ParametricCurve3dElementCoordinateDirection::get_type_descriptor(@)",
    header: "StepFEA_ParametricCurve3dElementCoordinateDirection.hxx".}
proc dynamicType*(this: StepFEA_ParametricCurve3dElementCoordinateDirection): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepFEA_ParametricCurve3dElementCoordinateDirection.hxx".}