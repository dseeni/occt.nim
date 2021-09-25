##  Created on: 1993-04-01
##  Created by: Modelistation
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of HLRAlgo_Projector"
type
  HLRBRepCurve* {.importcpp: "HLRBRep_Curve", header: "HLRBRep_Curve.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## undefined
                                                                                     ## Curve.


proc constructHLRBRepCurve*(): HLRBRepCurve {.constructor,
    importcpp: "HLRBRep_Curve(@)", header: "HLRBRep_Curve.hxx".}
proc projector*(this: var HLRBRepCurve; proj: ptr HLRAlgoProjector) {.
    importcpp: "Projector", header: "HLRBRep_Curve.hxx".}
proc curve*(this: var HLRBRepCurve): var BRepAdaptorCurve {.importcpp: "Curve",
    header: "HLRBRep_Curve.hxx".}
proc curve*(this: var HLRBRepCurve; e: TopoDS_Edge) {.importcpp: "Curve",
    header: "HLRBRep_Curve.hxx".}
proc getCurve*(this: HLRBRepCurve): BRepAdaptorCurve {.noSideEffect,
    importcpp: "GetCurve", header: "HLRBRep_Curve.hxx".}
proc parameter2d*(this: HLRBRepCurve; p3d: float): float {.noSideEffect,
    importcpp: "Parameter2d", header: "HLRBRep_Curve.hxx".}
proc parameter3d*(this: HLRBRepCurve; p2d: float): float {.noSideEffect,
    importcpp: "Parameter3d", header: "HLRBRep_Curve.hxx".}
proc update*(this: var HLRBRepCurve; totMin: array[16, float]; totMax: array[16, float]): float {.
    importcpp: "Update", header: "HLRBRep_Curve.hxx".}
proc updateMinMax*(this: var HLRBRepCurve; totMin: array[16, float];
                  totMax: array[16, float]): float {.importcpp: "UpdateMinMax",
    header: "HLRBRep_Curve.hxx".}
proc z*(this: HLRBRepCurve; u: float): float {.noSideEffect, importcpp: "Z",
    header: "HLRBRep_Curve.hxx".}
proc value3D*(this: HLRBRepCurve; u: float): Pnt {.noSideEffect, importcpp: "Value3D",
    header: "HLRBRep_Curve.hxx".}
proc d0*(this: HLRBRepCurve; u: float; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "HLRBRep_Curve.hxx".}
proc d1*(this: HLRBRepCurve; u: float; p: var Pnt; v: var Vec) {.noSideEffect,
    importcpp: "D1", header: "HLRBRep_Curve.hxx".}
proc tangent*(this: HLRBRepCurve; atStart: bool; p: var Pnt2d; d: var Dir2d) {.
    noSideEffect, importcpp: "Tangent", header: "HLRBRep_Curve.hxx".}
proc firstParameter*(this: HLRBRepCurve): float {.noSideEffect,
    importcpp: "FirstParameter", header: "HLRBRep_Curve.hxx".}
proc lastParameter*(this: HLRBRepCurve): float {.noSideEffect,
    importcpp: "LastParameter", header: "HLRBRep_Curve.hxx".}
proc continuity*(this: HLRBRepCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "HLRBRep_Curve.hxx".}
proc nbIntervals*(this: HLRBRepCurve; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "HLRBRep_Curve.hxx".}
proc intervals*(this: HLRBRepCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "HLRBRep_Curve.hxx".}
proc isClosed*(this: HLRBRepCurve): bool {.noSideEffect, importcpp: "IsClosed",
                                       header: "HLRBRep_Curve.hxx".}
proc isPeriodic*(this: HLRBRepCurve): bool {.noSideEffect, importcpp: "IsPeriodic",
    header: "HLRBRep_Curve.hxx".}
proc period*(this: HLRBRepCurve): float {.noSideEffect, importcpp: "Period",
                                      header: "HLRBRep_Curve.hxx".}
proc value*(this: HLRBRepCurve; u: float): Pnt2d {.noSideEffect, importcpp: "Value",
    header: "HLRBRep_Curve.hxx".}
proc d0*(this: HLRBRepCurve; u: float; p: var Pnt2d) {.noSideEffect, importcpp: "D0",
    header: "HLRBRep_Curve.hxx".}
proc d1*(this: HLRBRepCurve; u: float; p: var Pnt2d; v: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "HLRBRep_Curve.hxx".}
proc d2*(this: HLRBRepCurve; u: float; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "HLRBRep_Curve.hxx".}
proc d3*(this: HLRBRepCurve; u: float; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, importcpp: "D3", header: "HLRBRep_Curve.hxx".}
proc dn*(this: HLRBRepCurve; u: float; n: int): Vec2d {.noSideEffect, importcpp: "DN",
    header: "HLRBRep_Curve.hxx".}
proc resolution*(this: HLRBRepCurve; r3d: float): float {.noSideEffect,
    importcpp: "Resolution", header: "HLRBRep_Curve.hxx".}
proc getType*(this: HLRBRepCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "HLRBRep_Curve.hxx".}
proc line*(this: HLRBRepCurve): Lin2d {.noSideEffect, importcpp: "Line",
                                    header: "HLRBRep_Curve.hxx".}
proc circle*(this: HLRBRepCurve): Circ2d {.noSideEffect, importcpp: "Circle",
                                       header: "HLRBRep_Curve.hxx".}
proc ellipse*(this: HLRBRepCurve): Elips2d {.noSideEffect, importcpp: "Ellipse",
    header: "HLRBRep_Curve.hxx".}
proc hyperbola*(this: HLRBRepCurve): Hypr2d {.noSideEffect, importcpp: "Hyperbola",
    header: "HLRBRep_Curve.hxx".}
proc parabola*(this: HLRBRepCurve): Parab2d {.noSideEffect, importcpp: "Parabola",
    header: "HLRBRep_Curve.hxx".}
proc isRational*(this: HLRBRepCurve): bool {.noSideEffect, importcpp: "IsRational",
    header: "HLRBRep_Curve.hxx".}
proc degree*(this: HLRBRepCurve): int {.noSideEffect, importcpp: "Degree",
                                    header: "HLRBRep_Curve.hxx".}
proc nbPoles*(this: HLRBRepCurve): int {.noSideEffect, importcpp: "NbPoles",
                                     header: "HLRBRep_Curve.hxx".}
proc poles*(this: HLRBRepCurve; tp: var TColgpArray1OfPnt2d) {.noSideEffect,
    importcpp: "Poles", header: "HLRBRep_Curve.hxx".}
proc poles*(this: HLRBRepCurve; aCurve: Handle[GeomBSplineCurve];
           tp: var TColgpArray1OfPnt2d) {.noSideEffect, importcpp: "Poles",
                                       header: "HLRBRep_Curve.hxx".}
proc polesAndWeights*(this: HLRBRepCurve; tp: var TColgpArray1OfPnt2d;
                     tw: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "PolesAndWeights", header: "HLRBRep_Curve.hxx".}
proc polesAndWeights*(this: HLRBRepCurve; aCurve: Handle[GeomBSplineCurve];
                     tp: var TColgpArray1OfPnt2d; tw: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "PolesAndWeights", header: "HLRBRep_Curve.hxx".}
proc nbKnots*(this: HLRBRepCurve): int {.noSideEffect, importcpp: "NbKnots",
                                     header: "HLRBRep_Curve.hxx".}
proc knots*(this: HLRBRepCurve; kn: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "HLRBRep_Curve.hxx".}
proc multiplicities*(this: HLRBRepCurve; mu: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Multiplicities", header: "HLRBRep_Curve.hxx".}
