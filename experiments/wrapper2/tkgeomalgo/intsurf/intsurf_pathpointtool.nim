##  Created on: 1992-09-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of IntSurf_PathPoint"
type
  IntSurfPathPointTool* {.importcpp: "IntSurf_PathPointTool",
                         header: "IntSurf_PathPointTool.hxx", bycopy.} = object ## !
                                                                           ## Returns the 3d
                                                                           ## coordinates of the
                                                                           ## starting
                                                                           ## point.


proc value3d*(pStart: IntSurfPathPoint): Pnt {.cdecl,
    importcpp: "IntSurf_PathPointTool::Value3d(@)", dynlib: tkgeomalgo.}
proc value2d*(pStart: IntSurfPathPoint; u: var cfloat; v: var cfloat) {.cdecl,
    importcpp: "IntSurf_PathPointTool::Value2d(@)", dynlib: tkgeomalgo.}
proc isPassingPnt*(pStart: IntSurfPathPoint): bool {.cdecl,
    importcpp: "IntSurf_PathPointTool::IsPassingPnt(@)", dynlib: tkgeomalgo.}
proc isTangent*(pStart: IntSurfPathPoint): bool {.cdecl,
    importcpp: "IntSurf_PathPointTool::IsTangent(@)", dynlib: tkgeomalgo.}
proc direction3d*(pStart: IntSurfPathPoint): Vec {.cdecl,
    importcpp: "IntSurf_PathPointTool::Direction3d(@)", dynlib: tkgeomalgo.}
proc direction2d*(pStart: IntSurfPathPoint): Dir2d {.cdecl,
    importcpp: "IntSurf_PathPointTool::Direction2d(@)", dynlib: tkgeomalgo.}
proc multiplicity*(pStart: IntSurfPathPoint): cint {.cdecl,
    importcpp: "IntSurf_PathPointTool::Multiplicity(@)", dynlib: tkgeomalgo.}
proc parameters*(pStart: IntSurfPathPoint; mult: cint; u: var cfloat; v: var cfloat) {.
    cdecl, importcpp: "IntSurf_PathPointTool::Parameters(@)", dynlib: tkgeomalgo.}