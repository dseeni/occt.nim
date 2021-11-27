##  Created on: 1994-08-18
##  Created by: Laurent PAINNOT
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Vec2d"
type
  Geom2dAPI_Interpolate* {.importcpp: "Geom2dAPI_Interpolate",
                          header: "Geom2dAPI_Interpolate.hxx", bycopy.} = object ## !
                                                                            ## Interpolates in a non
                                                                            ## periodic
                                                                            ## fashion


proc `new`*(this: var Geom2dAPI_Interpolate; theSize: csize_t): pointer {.
    importcpp: "Geom2dAPI_Interpolate::operator new",
    header: "Geom2dAPI_Interpolate.hxx".}
proc `delete`*(this: var Geom2dAPI_Interpolate; theAddress: pointer) {.
    importcpp: "Geom2dAPI_Interpolate::operator delete",
    header: "Geom2dAPI_Interpolate.hxx".}
proc `new[]`*(this: var Geom2dAPI_Interpolate; theSize: csize_t): pointer {.
    importcpp: "Geom2dAPI_Interpolate::operator new[]",
    header: "Geom2dAPI_Interpolate.hxx".}
proc `delete[]`*(this: var Geom2dAPI_Interpolate; theAddress: pointer) {.
    importcpp: "Geom2dAPI_Interpolate::operator delete[]",
    header: "Geom2dAPI_Interpolate.hxx".}
proc `new`*(this: var Geom2dAPI_Interpolate; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dAPI_Interpolate::operator new",
    header: "Geom2dAPI_Interpolate.hxx".}
proc `delete`*(this: var Geom2dAPI_Interpolate; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dAPI_Interpolate::operator delete",
    header: "Geom2dAPI_Interpolate.hxx".}
proc constructGeom2dAPI_Interpolate*(points: Handle[TColgpHArray1OfPnt2d];
                                    periodicFlag: StandardBoolean;
                                    tolerance: StandardReal): Geom2dAPI_Interpolate {.
    constructor, importcpp: "Geom2dAPI_Interpolate(@)",
    header: "Geom2dAPI_Interpolate.hxx".}
proc constructGeom2dAPI_Interpolate*(points: Handle[TColgpHArray1OfPnt2d];
                                    parameters: Handle[TColStdHArray1OfReal];
                                    periodicFlag: StandardBoolean;
                                    tolerance: StandardReal): Geom2dAPI_Interpolate {.
    constructor, importcpp: "Geom2dAPI_Interpolate(@)",
    header: "Geom2dAPI_Interpolate.hxx".}
proc load*(this: var Geom2dAPI_Interpolate; initialTangent: Vec2d;
          finalTangent: Vec2d; scale: StandardBoolean = true) {.importcpp: "Load",
    header: "Geom2dAPI_Interpolate.hxx".}
proc load*(this: var Geom2dAPI_Interpolate; tangents: TColgpArray1OfVec2d;
          tangentFlags: Handle[TColStdHArray1OfBoolean];
          scale: StandardBoolean = true) {.importcpp: "Load",
                                       header: "Geom2dAPI_Interpolate.hxx".}
proc clearTangents*(this: var Geom2dAPI_Interpolate) {.importcpp: "ClearTangents",
    header: "Geom2dAPI_Interpolate.hxx".}
proc perform*(this: var Geom2dAPI_Interpolate) {.importcpp: "Perform",
    header: "Geom2dAPI_Interpolate.hxx".}
proc curve*(this: Geom2dAPI_Interpolate): Handle[Geom2dBSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "Geom2dAPI_Interpolate.hxx".}
converter `opencascade`*(this: Geom2dAPI_Interpolate): Handle[Geom2dBSplineCurve] {.
    noSideEffect, importcpp: "Geom2dAPI_Interpolate::operator opencascade",
    header: "Geom2dAPI_Interpolate.hxx".}
proc isDone*(this: Geom2dAPI_Interpolate): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dAPI_Interpolate.hxx".}