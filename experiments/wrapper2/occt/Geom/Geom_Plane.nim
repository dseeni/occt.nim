##  Created on: 1993-03-10
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
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Plane"
type
  HandleGeomPlane* = Handle[GeomPlane]

## ! Describes a plane in 3D space.
## ! A plane is positioned in space by a coordinate system
## ! (a gp_Ax3 object) such that the plane is defined by
## ! the origin, "X Direction" and "Y Direction" of this
## ! coordinate system.
## ! This coordinate system is the "local coordinate
## ! system" of the plane. The following apply:
## ! - Its "X Direction" and "Y Direction" are respectively
## ! the u and v parametric directions of the plane.
## ! - Its origin is the origin of the u and v parameters
## ! (also called the "origin" of the plane).
## ! - Its "main Direction" is a vector normal to the plane.
## ! This normal vector gives the orientation of the
## ! plane only if the local coordinate system is "direct".
## ! (The orientation of the plane is always defined by
## ! the "X Direction" and the "Y Direction" of its local
## ! coordinate system.)
## ! The parametric equation of the plane is:
## ! P(u, v) = O + u*XDir + v*YDir
## ! where O, XDir and YDir are respectively the
## ! origin, the "X Direction" and the "Y Direction" of the
## ! local coordinate system of the plane.
## ! The parametric range of the two parameters u and v
## ! is ] -infinity, +infinity [.

type
  GeomPlane* {.importcpp: "Geom_Plane", header: "Geom_Plane.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## plane
                                                                                                   ## located
                                                                                                   ## in
                                                                                                   ## 3D
                                                                                                   ## space
                                                                                                   ## with
                                                                                                   ## an
                                                                                                   ## axis
                                                                                                   ## placement
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## three
                                                                                                   ## axis.
                                                                                                   ## The
                                                                                                   ## "ZDirection"
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## direction
                                                                                                   ## normal
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## to
                                                                                                   ## the
                                                                                                   ## plane.
                                                                                                   ## The
                                                                                                   ## "Location"
                                                                                                   ## point
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## origin
                                                                                                   ## of
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## the
                                                                                                   ## plane.
                                                                                                   ## The
                                                                                                   ## "XDirection"
                                                                                                   ## and
                                                                                                   ## "YDirection"
                                                                                                   ## of
                                                                                                   ## "A3"
                                                                                                   ## define
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## the
                                                                                                   ## directions
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## U
                                                                                                   ## isoparametric
                                                                                                   ## and
                                                                                                   ## V
                                                                                                   ## isoparametric
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## curves.


proc constructGeomPlane*(a3: Ax3): GeomPlane {.constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc constructGeomPlane*(pl: Pln): GeomPlane {.constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc constructGeomPlane*(p: Pnt; v: Dir): GeomPlane {.constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc constructGeomPlane*(a: float; b: float; c: float; d: float): GeomPlane {.constructor,
    importcpp: "Geom_Plane(@)", header: "Geom_Plane.hxx".}
proc setPln*(this: var GeomPlane; pl: Pln) {.importcpp: "SetPln",
                                       header: "Geom_Plane.hxx".}
proc pln*(this: GeomPlane): Pln {.noSideEffect, importcpp: "Pln",
                              header: "Geom_Plane.hxx".}
proc uReverse*(this: var GeomPlane) {.importcpp: "UReverse", header: "Geom_Plane.hxx".}
proc uReversedParameter*(this: GeomPlane; u: float): float {.noSideEffect,
    importcpp: "UReversedParameter", header: "Geom_Plane.hxx".}
proc vReverse*(this: var GeomPlane) {.importcpp: "VReverse", header: "Geom_Plane.hxx".}
proc vReversedParameter*(this: GeomPlane; v: float): float {.noSideEffect,
    importcpp: "VReversedParameter", header: "Geom_Plane.hxx".}
proc transformParameters*(this: GeomPlane; u: var float; v: var float; t: Trsf) {.
    noSideEffect, importcpp: "TransformParameters", header: "Geom_Plane.hxx".}
proc parametricTransformation*(this: GeomPlane; t: Trsf): GTrsf2d {.noSideEffect,
    importcpp: "ParametricTransformation", header: "Geom_Plane.hxx".}
proc bounds*(this: GeomPlane; u1: var float; u2: var float; v1: var float; v2: var float) {.
    noSideEffect, importcpp: "Bounds", header: "Geom_Plane.hxx".}
proc coefficients*(this: GeomPlane; a: var float; b: var float; c: var float; d: var float) {.
    noSideEffect, importcpp: "Coefficients", header: "Geom_Plane.hxx".}
proc isUClosed*(this: GeomPlane): bool {.noSideEffect, importcpp: "IsUClosed",
                                     header: "Geom_Plane.hxx".}
proc isVClosed*(this: GeomPlane): bool {.noSideEffect, importcpp: "IsVClosed",
                                     header: "Geom_Plane.hxx".}
proc isUPeriodic*(this: GeomPlane): bool {.noSideEffect, importcpp: "IsUPeriodic",
                                       header: "Geom_Plane.hxx".}
proc isVPeriodic*(this: GeomPlane): bool {.noSideEffect, importcpp: "IsVPeriodic",
                                       header: "Geom_Plane.hxx".}
proc uIso*(this: GeomPlane; u: float): Handle[GeomCurve] {.noSideEffect,
    importcpp: "UIso", header: "Geom_Plane.hxx".}
proc vIso*(this: GeomPlane; v: float): Handle[GeomCurve] {.noSideEffect,
    importcpp: "VIso", header: "Geom_Plane.hxx".}
proc d0*(this: GeomPlane; u: float; v: float; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "Geom_Plane.hxx".}
proc d1*(this: GeomPlane; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "Geom_Plane.hxx".}
proc d2*(this: GeomPlane; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, importcpp: "D2",
    header: "Geom_Plane.hxx".}
proc d3*(this: GeomPlane; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
        d3uvv: var Vec) {.noSideEffect, importcpp: "D3", header: "Geom_Plane.hxx".}
proc dn*(this: GeomPlane; u: float; v: float; nu: int; nv: int): Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_Plane.hxx".}
proc transform*(this: var GeomPlane; t: Trsf) {.importcpp: "Transform",
    header: "Geom_Plane.hxx".}
proc copy*(this: GeomPlane): Handle[GeomGeometry] {.noSideEffect, importcpp: "Copy",
    header: "Geom_Plane.hxx".}
proc dumpJson*(this: GeomPlane; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Geom_Plane.hxx".}
type
  GeomPlanebaseType* = GeomElementarySurface

proc getTypeName*(): cstring {.importcpp: "Geom_Plane::get_type_name(@)",
                            header: "Geom_Plane.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Plane::get_type_descriptor(@)", header: "Geom_Plane.hxx".}
proc dynamicType*(this: GeomPlane): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Plane.hxx".}
