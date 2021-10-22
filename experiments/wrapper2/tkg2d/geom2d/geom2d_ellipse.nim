##  Created on: 1993-03-24
##  Created by: JCV
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Ellipse"
type
  HandleGeom2dEllipse* = Handle[Geom2dEllipse]

## ! Describes an ellipse in the plane (2D space).
## ! An ellipse is defined by its major and minor radii and,
## ! as with any conic curve, is positioned in the plane
## ! with a coordinate system (gp_Ax22d object) where:
## ! - the origin is the center of the ellipse,
## ! - the "X Direction" defines the major axis, and
## ! - the "Y Direction" defines the minor axis.
## ! This coordinate system is the local coordinate system of the ellipse.
## ! The orientation (direct or indirect) of the local
## ! coordinate system gives an explicit orientation to the
## ! ellipse, determining the direction in which the
## ! parameter increases along the ellipse.
## ! The Geom2d_Ellipse ellipse is parameterized by an angle:
## ! P(U) = O + MajorRad*Cos(U)*XDir + MinorRad*Sin(U)*YDir
## ! where:
## ! - P is the point of parameter U,
## ! - O, XDir and YDir are respectively the origin, "X
## ! Direction" and "Y Direction" of its local coordinate system,
## ! - MajorRad and MinorRad are the major and
## ! minor radii of the ellipse.
## ! The "X Axis" of the local coordinate system therefore
## ! defines the origin of the parameter of the ellipse.
## ! An ellipse is a closed and periodic curve. The period
## ! is 2.*Pi and the parameter range is [ 0,2.*Pi [.
## ! See Also
## ! GCE2d_MakeEllipse which provides functions for
## ! more complex ellipse constructions
## ! gp_Ax22d
## ! gp_Elips2d for an equivalent, non-parameterized data structure

type
  Geom2dEllipse* {.importcpp: "Geom2d_Ellipse", header: "Geom2d_Ellipse.hxx", bycopy.} = object of Geom2dConic ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## ellipse
                                                                                                     ## by
                                                                                                     ## conversion
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## gp_Elips2d
                                                                                                     ## ellipse
                                                                                                     ## E.


proc newGeom2dEllipse*(e: Elips2d): Geom2dEllipse {.cdecl, constructor,
    importcpp: "Geom2d_Ellipse(@)", dynlib: tkernel.}
proc newGeom2dEllipse*(majorAxis: Ax2d; majorRadius: cfloat; minorRadius: cfloat;
                      sense: bool = true): Geom2dEllipse {.cdecl, constructor,
    importcpp: "Geom2d_Ellipse(@)", dynlib: tkernel.}
proc newGeom2dEllipse*(axis: Ax22d; majorRadius: cfloat; minorRadius: cfloat): Geom2dEllipse {.
    cdecl, constructor, importcpp: "Geom2d_Ellipse(@)", dynlib: tkernel.}
proc setElips2d*(this: var Geom2dEllipse; e: Elips2d) {.cdecl, importcpp: "SetElips2d",
    dynlib: tkernel.}
proc setMajorRadius*(this: var Geom2dEllipse; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", dynlib: tkernel.}
proc setMinorRadius*(this: var Geom2dEllipse; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", dynlib: tkernel.}
proc elips2d*(this: Geom2dEllipse): Elips2d {.noSideEffect, cdecl,
    importcpp: "Elips2d", dynlib: tkernel.}
proc reversedParameter*(this: Geom2dEllipse; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkernel.}
proc directrix1*(this: Geom2dEllipse): Ax2d {.noSideEffect, cdecl,
    importcpp: "Directrix1", dynlib: tkernel.}
proc directrix2*(this: Geom2dEllipse): Ax2d {.noSideEffect, cdecl,
    importcpp: "Directrix2", dynlib: tkernel.}
proc eccentricity*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", dynlib: tkernel.}
proc focal*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                       dynlib: tkernel.}
proc focus1*(this: Geom2dEllipse): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus1",
                                       dynlib: tkernel.}
proc focus2*(this: Geom2dEllipse): Pnt2d {.noSideEffect, cdecl, importcpp: "Focus2",
                                       dynlib: tkernel.}
proc majorRadius*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", dynlib: tkernel.}
proc minorRadius*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", dynlib: tkernel.}
proc parameter*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", dynlib: tkernel.}
proc firstParameter*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkernel.}
proc lastParameter*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkernel.}
proc isClosed*(this: Geom2dEllipse): bool {.noSideEffect, cdecl,
                                        importcpp: "IsClosed", dynlib: tkernel.}
proc isPeriodic*(this: Geom2dEllipse): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkernel.}
proc d0*(this: Geom2dEllipse; u: cfloat; p: var Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkernel.}
proc d1*(this: Geom2dEllipse; u: cfloat; p: var Pnt2d; v1: var Vec2d) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkernel.}
proc d2*(this: Geom2dEllipse; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkernel.}
proc d3*(this: Geom2dEllipse; u: cfloat; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d;
        v3: var Vec2d) {.noSideEffect, cdecl, importcpp: "D3", dynlib: tkernel.}
proc dn*(this: Geom2dEllipse; u: cfloat; n: cint): Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkernel.}
proc transform*(this: var Geom2dEllipse; t: Trsf2d) {.cdecl, importcpp: "Transform",
    dynlib: tkernel.}
proc copy*(this: Geom2dEllipse): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkernel.}
proc dumpJson*(this: Geom2dEllipse; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}