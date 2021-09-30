##  Created on: 1993-03-31
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_OffsetCurve"
type
  Adaptor3dCurve* {.importcpp: "Adaptor3d_Curve", header: "Adaptor3d_Curve.hxx",
                   bycopy.} = object of RootObj


proc firstParameter*(this: Adaptor3dCurve): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "Adaptor3d_Curve.hxx".}
proc lastParameter*(this: Adaptor3dCurve): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "Adaptor3d_Curve.hxx".}
proc continuity*(this: Adaptor3dCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Adaptor3d_Curve.hxx".}
proc nbIntervals*(this: Adaptor3dCurve; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "Adaptor3d_Curve.hxx".}
#[ proc intervals*(this: Adaptor3dCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "Adaptor3d_Curve.hxx".} ]#
proc trim*(this: Adaptor3dCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, importcpp: "Trim",
                      header: "Adaptor3d_Curve.hxx".}
proc isClosed*(this: Adaptor3dCurve): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Adaptor3d_Curve.hxx".}
proc isPeriodic*(this: Adaptor3dCurve): bool {.noSideEffect, importcpp: "IsPeriodic",
    header: "Adaptor3d_Curve.hxx".}
proc period*(this: Adaptor3dCurve): cfloat {.noSideEffect, importcpp: "Period",
    header: "Adaptor3d_Curve.hxx".}
proc value*(this: Adaptor3dCurve; u: cfloat): Pnt {.noSideEffect, importcpp: "Value",
    header: "Adaptor3d_Curve.hxx".}
proc d0*(this: Adaptor3dCurve; u: cfloat; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Adaptor3d_Curve.hxx".}
proc d1*(this: Adaptor3dCurve; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "Adaptor3d_Curve.hxx".}
proc d2*(this: Adaptor3dCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, importcpp: "D2", header: "Adaptor3d_Curve.hxx".}
proc d3*(this: Adaptor3dCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "D3", header: "Adaptor3d_Curve.hxx".}
proc dn*(this: Adaptor3dCurve; u: cfloat; n: cint): Vec {.noSideEffect, importcpp: "DN",
    header: "Adaptor3d_Curve.hxx".}
proc resolution*(this: Adaptor3dCurve; r3d: cfloat): cfloat {.noSideEffect,
    importcpp: "Resolution", header: "Adaptor3d_Curve.hxx".}
proc getType*(this: Adaptor3dCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_Curve.hxx".}
proc line*(this: Adaptor3dCurve): Lin {.noSideEffect, importcpp: "Line",
                                    header: "Adaptor3d_Curve.hxx".}
proc circle*(this: Adaptor3dCurve): Circ {.noSideEffect, importcpp: "Circle",
                                       header: "Adaptor3d_Curve.hxx".}
proc ellipse*(this: Adaptor3dCurve): Elips {.noSideEffect, importcpp: "Ellipse",
    header: "Adaptor3d_Curve.hxx".}
proc hyperbola*(this: Adaptor3dCurve): Hypr {.noSideEffect, importcpp: "Hyperbola",
    header: "Adaptor3d_Curve.hxx".}
proc parabola*(this: Adaptor3dCurve): Parab {.noSideEffect, importcpp: "Parabola",
    header: "Adaptor3d_Curve.hxx".}
proc degree*(this: Adaptor3dCurve): cint {.noSideEffect, importcpp: "Degree",
                                       header: "Adaptor3d_Curve.hxx".}
proc isRational*(this: Adaptor3dCurve): bool {.noSideEffect, importcpp: "IsRational",
    header: "Adaptor3d_Curve.hxx".}
proc nbPoles*(this: Adaptor3dCurve): cint {.noSideEffect, importcpp: "NbPoles",
                                        header: "Adaptor3d_Curve.hxx".}
proc nbKnots*(this: Adaptor3dCurve): cint {.noSideEffect, importcpp: "NbKnots",
                                        header: "Adaptor3d_Curve.hxx".}
proc bezier*(this: Adaptor3dCurve): Handle[GeomBezierCurve] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_Curve.hxx".}
proc bSpline*(this: Adaptor3dCurve): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_Curve.hxx".}
proc offsetCurve*(this: Adaptor3dCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    importcpp: "OffsetCurve", header: "Adaptor3d_Curve.hxx".}
proc destroyAdaptor3dCurve*(this: var Adaptor3dCurve) {.
    importcpp: "#.~Adaptor3d_Curve()", header: "Adaptor3d_Curve.hxx".}

























