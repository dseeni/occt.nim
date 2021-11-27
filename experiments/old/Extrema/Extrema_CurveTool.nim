##  Created on: 1995-07-18
##  Created by: Modelistation
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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  ExtremaCurveTool* {.importcpp: "Extrema_CurveTool",
                     header: "Extrema_CurveTool.hxx", bycopy.} = object


proc firstParameter*(c: Adaptor3dCurve): cfloat {.
    importcpp: "Extrema_CurveTool::FirstParameter(@)",
    header: "Extrema_CurveTool.hxx".}
proc lastParameter*(c: Adaptor3dCurve): cfloat {.
    importcpp: "Extrema_CurveTool::LastParameter(@)",
    header: "Extrema_CurveTool.hxx".}
proc continuity*(c: Adaptor3dCurve): GeomAbsShape {.
    importcpp: "Extrema_CurveTool::Continuity(@)", header: "Extrema_CurveTool.hxx".}
proc nbIntervals*(c: var Adaptor3dCurve; s: GeomAbsShape): cint {.
    importcpp: "Extrema_CurveTool::NbIntervals(@)",
    header: "Extrema_CurveTool.hxx".}
proc intervals*(c: var Adaptor3dCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    importcpp: "Extrema_CurveTool::Intervals(@)", header: "Extrema_CurveTool.hxx".}
proc deflCurvIntervals*(c: Adaptor3dCurve): Handle[TColStdHArray1OfReal] {.
    importcpp: "Extrema_CurveTool::DeflCurvIntervals(@)",
    header: "Extrema_CurveTool.hxx".}
proc isPeriodic*(c: Adaptor3dCurve): bool {.importcpp: "Extrema_CurveTool::IsPeriodic(@)",
                                        header: "Extrema_CurveTool.hxx".}
proc period*(c: Adaptor3dCurve): cfloat {.importcpp: "Extrema_CurveTool::Period(@)",
                                      header: "Extrema_CurveTool.hxx".}
proc resolution*(c: Adaptor3dCurve; r3d: cfloat): cfloat {.
    importcpp: "Extrema_CurveTool::Resolution(@)", header: "Extrema_CurveTool.hxx".}
proc getType*(c: Adaptor3dCurve): GeomAbsCurveType {.
    importcpp: "Extrema_CurveTool::GetType(@)", header: "Extrema_CurveTool.hxx".}
proc value*(c: Adaptor3dCurve; u: cfloat): Pnt {.
    importcpp: "Extrema_CurveTool::Value(@)", header: "Extrema_CurveTool.hxx".}
proc d0*(c: Adaptor3dCurve; u: cfloat; p: var Pnt) {.
    importcpp: "Extrema_CurveTool::D0(@)", header: "Extrema_CurveTool.hxx".}
proc d1*(c: Adaptor3dCurve; u: cfloat; p: var Pnt; v: var Vec) {.
    importcpp: "Extrema_CurveTool::D1(@)", header: "Extrema_CurveTool.hxx".}
proc d2*(c: Adaptor3dCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "Extrema_CurveTool::D2(@)", header: "Extrema_CurveTool.hxx".}
proc d3*(c: Adaptor3dCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "Extrema_CurveTool::D3(@)", header: "Extrema_CurveTool.hxx".}
proc dn*(c: Adaptor3dCurve; u: cfloat; n: cint): Vec {.
    importcpp: "Extrema_CurveTool::DN(@)", header: "Extrema_CurveTool.hxx".}
proc line*(c: Adaptor3dCurve): Lin {.importcpp: "Extrema_CurveTool::Line(@)",
                                 header: "Extrema_CurveTool.hxx".}
proc circle*(c: Adaptor3dCurve): Circ {.importcpp: "Extrema_CurveTool::Circle(@)",
                                    header: "Extrema_CurveTool.hxx".}
proc ellipse*(c: Adaptor3dCurve): Elips {.importcpp: "Extrema_CurveTool::Ellipse(@)",
                                      header: "Extrema_CurveTool.hxx".}
proc hyperbola*(c: Adaptor3dCurve): Hypr {.importcpp: "Extrema_CurveTool::Hyperbola(@)",
                                       header: "Extrema_CurveTool.hxx".}
proc parabola*(c: Adaptor3dCurve): Parab {.importcpp: "Extrema_CurveTool::Parabola(@)",
                                       header: "Extrema_CurveTool.hxx".}
proc degree*(c: Adaptor3dCurve): cint {.importcpp: "Extrema_CurveTool::Degree(@)",
                                    header: "Extrema_CurveTool.hxx".}
proc isRational*(c: Adaptor3dCurve): bool {.importcpp: "Extrema_CurveTool::IsRational(@)",
                                        header: "Extrema_CurveTool.hxx".}
proc nbPoles*(c: Adaptor3dCurve): cint {.importcpp: "Extrema_CurveTool::NbPoles(@)",
                                     header: "Extrema_CurveTool.hxx".}
proc nbKnots*(c: Adaptor3dCurve): cint {.importcpp: "Extrema_CurveTool::NbKnots(@)",
                                     header: "Extrema_CurveTool.hxx".}
proc bezier*(c: Adaptor3dCurve): Handle[GeomBezierCurve] {.
    importcpp: "Extrema_CurveTool::Bezier(@)", header: "Extrema_CurveTool.hxx".}
proc bSpline*(c: Adaptor3dCurve): Handle[GeomBSplineCurve] {.
    importcpp: "Extrema_CurveTool::BSpline(@)", header: "Extrema_CurveTool.hxx".}
























