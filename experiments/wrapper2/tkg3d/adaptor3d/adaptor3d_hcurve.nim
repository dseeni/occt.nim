##  Created on: 1994-02-23
##  Created by: model
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierCurve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom_OffsetCurve"
discard "forward decl of Adaptor3d_HCurve"
type
  HandleAdaptor3dHCurve* = Handle[Adaptor3dHCurve]

## ! Root class for 3D curves manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted curve is an interface between the
## ! services provided by a curve and those required of
## ! the curve by algorithms which use it.
## ! Two derived concrete classes are provided:
## ! - GeomAdaptor_HCurve for a curve from the Geom package
## ! - Adaptor3d_HCurveOnSurface for a curve lying
## ! on a surface from the Geom package.

type
  Adaptor3dHCurve* {.importcpp: "Adaptor3d_HCurve", header: "Adaptor3d_HCurve.hxx",
                    bycopy.} = object of StandardTransient ## ! Returns a pointer to the Curve inside the HCurve.


proc curve*(this: Adaptor3dHCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkg3d.}
proc getCurve*(this: var Adaptor3dHCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", dynlib: tkg3d.}
proc firstParameter*(this: Adaptor3dHCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkg3d.}
proc lastParameter*(this: Adaptor3dHCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkg3d.}
proc continuity*(this: Adaptor3dHCurve): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkg3d.}
proc nbIntervals*(this: Adaptor3dHCurve; s: GeomAbsShape): cint {.noSideEffect, cdecl,
    importcpp: "NbIntervals", dynlib: tkg3d.}
proc intervals*(this: Adaptor3dHCurve; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkg3d.}
proc trim*(this: Adaptor3dHCurve; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHCurve] {.noSideEffect, cdecl, importcpp: "Trim", dynlib: tkg3d.}
proc isClosed*(this: Adaptor3dHCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", dynlib: tkg3d.}
proc isPeriodic*(this: Adaptor3dHCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkg3d.}
proc period*(this: Adaptor3dHCurve): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", dynlib: tkg3d.}
proc value*(this: Adaptor3dHCurve; u: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkg3d.}
proc d0*(this: Adaptor3dHCurve; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: Adaptor3dHCurve; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: Adaptor3dHCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: Adaptor3dHCurve; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkg3d.}
proc dn*(this: Adaptor3dHCurve; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkg3d.}
proc resolution*(this: Adaptor3dHCurve; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkg3d.}
proc getType*(this: Adaptor3dHCurve): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkg3d.}
proc line*(this: Adaptor3dHCurve): Lin {.noSideEffect, cdecl, importcpp: "Line",
                                     dynlib: tkg3d.}
proc circle*(this: Adaptor3dHCurve): Circ {.noSideEffect, cdecl, importcpp: "Circle",
                                        dynlib: tkg3d.}
proc ellipse*(this: Adaptor3dHCurve): Elips {.noSideEffect, cdecl,
    importcpp: "Ellipse", dynlib: tkg3d.}
proc hyperbola*(this: Adaptor3dHCurve): Hypr {.noSideEffect, cdecl,
    importcpp: "Hyperbola", dynlib: tkg3d.}
proc parabola*(this: Adaptor3dHCurve): Parab {.noSideEffect, cdecl,
    importcpp: "Parabola", dynlib: tkg3d.}
proc degree*(this: Adaptor3dHCurve): cint {.noSideEffect, cdecl, importcpp: "Degree",
                                        dynlib: tkg3d.}
proc isRational*(this: Adaptor3dHCurve): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkg3d.}
proc nbPoles*(this: Adaptor3dHCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkg3d.}
proc nbKnots*(this: Adaptor3dHCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbKnots", dynlib: tkg3d.}
proc bezier*(this: Adaptor3dHCurve): Handle[GeomBezierCurve] {.noSideEffect, cdecl,
    importcpp: "Bezier", dynlib: tkg3d.}
proc bSpline*(this: Adaptor3dHCurve): Handle[GeomBSplineCurve] {.noSideEffect, cdecl,
    importcpp: "BSpline", dynlib: tkg3d.}
proc offsetCurve*(this: Adaptor3dHCurve): Handle[GeomOffsetCurve] {.noSideEffect,
    cdecl, importcpp: "OffsetCurve", dynlib: tkg3d.}