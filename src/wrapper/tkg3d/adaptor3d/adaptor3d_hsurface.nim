##  Created on: 1994-02-14
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
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
type
  HandleAdaptor3dHSurface* = Handle[Adaptor3dHSurface]

## ! Root class for surfaces manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted surface is an interface between the
## ! services provided by a surface and those required of
## ! the surface by algorithms which use it.
## ! A derived concrete class is provided:
## ! GeomAdaptor_HSurface for a surface from the Geom package.

type
  Adaptor3dHSurface* {.importcpp: "Adaptor3d_HSurface",
                      header: "Adaptor3d_HSurface.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## reference
                                                                                        ## to
                                                                                        ## the
                                                                                        ## Surface
                                                                                        ## inside
                                                                                        ## the
                                                                                        ## HSurface.


proc surface*(this: Adaptor3dHSurface): Adaptor3dSurface {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkg3d.}
proc firstUParameter*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstUParameter", dynlib: tkg3d.}
proc lastUParameter*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastUParameter", dynlib: tkg3d.}
proc firstVParameter*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstVParameter", dynlib: tkg3d.}
proc lastVParameter*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastVParameter", dynlib: tkg3d.}
proc uContinuity*(this: Adaptor3dHSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "UContinuity", dynlib: tkg3d.}
proc vContinuity*(this: Adaptor3dHSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "VContinuity", dynlib: tkg3d.}
proc nbUIntervals*(this: Adaptor3dHSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbUIntervals", dynlib: tkg3d.}
proc nbVIntervals*(this: Adaptor3dHSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbVIntervals", dynlib: tkg3d.}
proc uIntervals*(this: Adaptor3dHSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "UIntervals", dynlib: tkg3d.}
proc vIntervals*(this: Adaptor3dHSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "VIntervals", dynlib: tkg3d.}
proc uTrim*(this: Adaptor3dHSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "UTrim", dynlib: tkg3d.}
proc vTrim*(this: Adaptor3dHSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "VTrim", dynlib: tkg3d.}
proc isUClosed*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkg3d.}
proc isVClosed*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkg3d.}
proc isUPeriodic*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkg3d.}
proc uPeriod*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", dynlib: tkg3d.}
proc isVPeriodic*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkg3d.}
proc vPeriod*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", dynlib: tkg3d.}
proc value*(this: Adaptor3dHSurface; u: cfloat; v: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkg3d.}
proc d0*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkg3d.}
proc d1*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkg3d.}
proc d2*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", dynlib: tkg3d.}
proc d3*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    dynlib: tkg3d.}
proc dn*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkg3d.}
proc uResolution*(this: Adaptor3dHSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UResolution", dynlib: tkg3d.}
proc vResolution*(this: Adaptor3dHSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VResolution", dynlib: tkg3d.}
proc getType*(this: Adaptor3dHSurface): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkg3d.}
proc plane*(this: Adaptor3dHSurface): Pln {.noSideEffect, cdecl, importcpp: "Plane",
                                        dynlib: tkg3d.}
proc cylinder*(this: Adaptor3dHSurface): Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", dynlib: tkg3d.}
proc cone*(this: Adaptor3dHSurface): Cone {.noSideEffect, cdecl, importcpp: "Cone",
                                        dynlib: tkg3d.}
proc sphere*(this: Adaptor3dHSurface): Sphere {.noSideEffect, cdecl,
    importcpp: "Sphere", dynlib: tkg3d.}
proc torus*(this: Adaptor3dHSurface): Torus {.noSideEffect, cdecl, importcpp: "Torus",
    dynlib: tkg3d.}
proc uDegree*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkg3d.}
proc nbUPoles*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", dynlib: tkg3d.}
proc vDegree*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkg3d.}
proc nbVPoles*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", dynlib: tkg3d.}
proc nbUKnots*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", dynlib: tkg3d.}
proc nbVKnots*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", dynlib: tkg3d.}
proc isURational*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", dynlib: tkg3d.}
proc isVRational*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", dynlib: tkg3d.}
proc bezier*(this: Adaptor3dHSurface): Handle[GeomBezierSurface] {.noSideEffect,
    cdecl, importcpp: "Bezier", dynlib: tkg3d.}
proc bSpline*(this: Adaptor3dHSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    cdecl, importcpp: "BSpline", dynlib: tkg3d.}
proc axeOfRevolution*(this: Adaptor3dHSurface): Ax1 {.noSideEffect, cdecl,
    importcpp: "AxeOfRevolution", dynlib: tkg3d.}
proc direction*(this: Adaptor3dHSurface): Dir {.noSideEffect, cdecl,
    importcpp: "Direction", dynlib: tkg3d.}
proc basisCurve*(this: Adaptor3dHSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "BasisCurve", dynlib: tkg3d.}
proc basisSurface*(this: Adaptor3dHSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "BasisSurface", dynlib: tkg3d.}
proc offsetValue*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "OffsetValue", dynlib: tkg3d.}