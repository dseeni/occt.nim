##  Created on: 1995-07-17
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
type
  HLRBRepBCurveTool* {.importcpp: "HLRBRep_BCurveTool",
                      header: "HLRBRep_BCurveTool.hxx", bycopy.} = object


proc firstParameter*(c: BRepAdaptorCurve): cfloat {.
    importcpp: "HLRBRep_BCurveTool::FirstParameter(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc lastParameter*(c: BRepAdaptorCurve): cfloat {.
    importcpp: "HLRBRep_BCurveTool::LastParameter(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc continuity*(c: BRepAdaptorCurve): GeomAbsShape {.
    importcpp: "HLRBRep_BCurveTool::Continuity(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc nbIntervals*(c: BRepAdaptorCurve; s: GeomAbsShape): cint {.
    importcpp: "HLRBRep_BCurveTool::NbIntervals(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc intervals*(c: BRepAdaptorCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    importcpp: "HLRBRep_BCurveTool::Intervals(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc isClosed*(c: BRepAdaptorCurve): bool {.importcpp: "HLRBRep_BCurveTool::IsClosed(@)",
                                        header: "HLRBRep_BCurveTool.hxx".}
proc isPeriodic*(c: BRepAdaptorCurve): bool {.
    importcpp: "HLRBRep_BCurveTool::IsPeriodic(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc period*(c: BRepAdaptorCurve): cfloat {.importcpp: "HLRBRep_BCurveTool::Period(@)",
                                        header: "HLRBRep_BCurveTool.hxx".}
proc value*(c: BRepAdaptorCurve; u: cfloat): Pnt {.
    importcpp: "HLRBRep_BCurveTool::Value(@)", header: "HLRBRep_BCurveTool.hxx".}
proc d0*(c: BRepAdaptorCurve; u: cfloat; p: var Pnt) {.
    importcpp: "HLRBRep_BCurveTool::D0(@)", header: "HLRBRep_BCurveTool.hxx".}
proc d1*(c: BRepAdaptorCurve; u: cfloat; p: var Pnt; v: var Vec) {.
    importcpp: "HLRBRep_BCurveTool::D1(@)", header: "HLRBRep_BCurveTool.hxx".}
proc d2*(c: BRepAdaptorCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "HLRBRep_BCurveTool::D2(@)", header: "HLRBRep_BCurveTool.hxx".}
proc d3*(c: BRepAdaptorCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "HLRBRep_BCurveTool::D3(@)", header: "HLRBRep_BCurveTool.hxx".}
proc dn*(c: BRepAdaptorCurve; u: cfloat; n: cint): Vec {.
    importcpp: "HLRBRep_BCurveTool::DN(@)", header: "HLRBRep_BCurveTool.hxx".}
proc resolution*(c: BRepAdaptorCurve; r3d: cfloat): cfloat {.
    importcpp: "HLRBRep_BCurveTool::Resolution(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc getType*(c: BRepAdaptorCurve): GeomAbsCurveType {.
    importcpp: "HLRBRep_BCurveTool::GetType(@)", header: "HLRBRep_BCurveTool.hxx".}
proc line*(c: BRepAdaptorCurve): Lin {.importcpp: "HLRBRep_BCurveTool::Line(@)",
                                   header: "HLRBRep_BCurveTool.hxx".}
proc circle*(c: BRepAdaptorCurve): Circ {.importcpp: "HLRBRep_BCurveTool::Circle(@)",
                                      header: "HLRBRep_BCurveTool.hxx".}
proc ellipse*(c: BRepAdaptorCurve): Elips {.importcpp: "HLRBRep_BCurveTool::Ellipse(@)",
                                        header: "HLRBRep_BCurveTool.hxx".}
proc hyperbola*(c: BRepAdaptorCurve): Hypr {.
    importcpp: "HLRBRep_BCurveTool::Hyperbola(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc parabola*(c: BRepAdaptorCurve): Parab {.
    importcpp: "HLRBRep_BCurveTool::Parabola(@)", header: "HLRBRep_BCurveTool.hxx".}
proc bezier*(c: BRepAdaptorCurve): Handle[GeomBezierCurve] {.
    importcpp: "HLRBRep_BCurveTool::Bezier(@)", header: "HLRBRep_BCurveTool.hxx".}
proc bSpline*(c: BRepAdaptorCurve): Handle[GeomBSplineCurve] {.
    importcpp: "HLRBRep_BCurveTool::BSpline(@)", header: "HLRBRep_BCurveTool.hxx".}
proc degree*(c: BRepAdaptorCurve): cint {.importcpp: "HLRBRep_BCurveTool::Degree(@)",
                                      header: "HLRBRep_BCurveTool.hxx".}
proc isRational*(c: BRepAdaptorCurve): bool {.
    importcpp: "HLRBRep_BCurveTool::IsRational(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc nbPoles*(c: BRepAdaptorCurve): cint {.importcpp: "HLRBRep_BCurveTool::NbPoles(@)",
                                       header: "HLRBRep_BCurveTool.hxx".}
proc nbKnots*(c: BRepAdaptorCurve): cint {.importcpp: "HLRBRep_BCurveTool::NbKnots(@)",
                                       header: "HLRBRep_BCurveTool.hxx".}
proc poles*(c: BRepAdaptorCurve; t: var TColgpArray1OfPnt) {.
    importcpp: "HLRBRep_BCurveTool::Poles(@)", header: "HLRBRep_BCurveTool.hxx".}
proc polesAndWeights*(c: BRepAdaptorCurve; t: var TColgpArray1OfPnt;
                     w: var TColStdArray1OfReal) {.
    importcpp: "HLRBRep_BCurveTool::PolesAndWeights(@)",
    header: "HLRBRep_BCurveTool.hxx".}
proc nbSamples*(c: BRepAdaptorCurve; u0: cfloat; u1: cfloat): cint {.
    importcpp: "HLRBRep_BCurveTool::NbSamples(@)",
    header: "HLRBRep_BCurveTool.hxx".}
























