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
discard "forward decl of gp_Sphere"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_SphericalSurface"
discard "forward decl of Geom_SphericalSurface"
type
  HandleGeomSphericalSurface* = Handle[GeomSphericalSurface]

## ! Describes a sphere.
## ! A sphere is defined by its radius, and is positioned in
## ! space by a coordinate system (a gp_Ax3 object), the
## ! origin of which is the center of the sphere.
## ! This coordinate system is the "local coordinate
## ! system" of the sphere. The following apply:
## ! - Rotation around its "main Axis", in the trigonometric
## ! sense given by the "X Direction" and the "Y
## ! Direction", defines the u parametric direction.
## ! - Its "X Axis" gives the origin for the u parameter.
## ! - The "reference meridian" of the sphere is a
## ! half-circle, of radius equal to the radius of the
## ! sphere. It is located in the plane defined by the
## ! origin, "X Direction" and "main Direction", centered
## ! on the origin, and positioned on the positive side of the "X Axis".
## ! - Rotation around the "Y Axis" gives the v parameter
## ! on the reference meridian.
## ! - The "X Axis" gives the origin of the v parameter on
## ! the reference meridian.
## ! - The v parametric direction is oriented by the "main
## ! Direction", i.e. when v increases, the Z coordinate
## ! increases. (This implies that the "Y Direction"
## ! orients the reference meridian only when the local
## ! coordinate system is indirect.)
## ! - The u isoparametric curve is a half-circle obtained
## ! by rotating the reference meridian of the sphere
## ! through an angle u around the "main Axis", in the
## ! trigonometric sense defined by the "X Direction"
## ! and the "Y Direction".
## ! The parametric equation of the sphere is:
## ! P(u,v) = O + R*cos(v)*(cos(u)*XDir + sin(u)*YDir)+R*sin(v)*ZDir
## ! where:
## ! - O, XDir, YDir and ZDir are respectively the
## ! origin, the "X Direction", the "Y Direction" and the "Z
## ! Direction" of its local coordinate system, and
## ! - R is the radius of the sphere.
## ! The parametric range of the two parameters is:
## ! - [ 0, 2.*Pi ] for u, and
## ! - [ - Pi/2., + Pi/2. ] for v.

type
  GeomSphericalSurface* {.importcpp: "Geom_SphericalSurface",
                         header: "Geom_SphericalSurface.hxx", bycopy.} = object of GeomElementarySurface ##
                                                                                                  ## !
                                                                                                  ## A3
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## local
                                                                                                  ## coordinate
                                                                                                  ## system
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## surface.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## At
                                                                                                  ## the
                                                                                                  ## creation
                                                                                                  ## the
                                                                                                  ## parametrization
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## surface
                                                                                                  ## is
                                                                                                  ## defined
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## such
                                                                                                  ## as
                                                                                                  ## the
                                                                                                  ## normal
                                                                                                  ## Vector
                                                                                                  ## (N
                                                                                                  ## =
                                                                                                  ## D1U
                                                                                                  ## ^
                                                                                                  ## D1V)
                                                                                                  ## is
                                                                                                  ## directed
                                                                                                  ## away
                                                                                                  ## from
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## the
                                                                                                  ## center
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## sphere.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## direction
                                                                                                  ## of
                                                                                                  ## increasing
                                                                                                  ## parametric
                                                                                                  ## value
                                                                                                  ## V
                                                                                                  ## is
                                                                                                  ## defined
                                                                                                  ## by
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## rotation
                                                                                                  ## around
                                                                                                  ## the
                                                                                                  ## "YDirection"
                                                                                                  ## of
                                                                                                  ## A2
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## trigonometric
                                                                                                  ## sense
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## and
                                                                                                  ## the
                                                                                                  ## orientation
                                                                                                  ## of
                                                                                                  ## increasing
                                                                                                  ## parametric
                                                                                                  ## value
                                                                                                  ## U
                                                                                                  ## is
                                                                                                  ## defined
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## by
                                                                                                  ## the
                                                                                                  ## rotation
                                                                                                  ## around
                                                                                                  ## the
                                                                                                  ## main
                                                                                                  ## direction
                                                                                                  ## of
                                                                                                  ## A2
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## trigonometric
                                                                                                  ## sense.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Warnings
                                                                                                  ## :
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## It
                                                                                                  ## is
                                                                                                  ## not
                                                                                                  ## forbidden
                                                                                                  ## to
                                                                                                  ## create
                                                                                                  ## a
                                                                                                  ## spherical
                                                                                                  ## surface
                                                                                                  ## with
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Radius
                                                                                                  ## =
                                                                                                  ## 0.0
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Raised
                                                                                                  ## if
                                                                                                  ## Radius
                                                                                                  ## <
                                                                                                  ## 0.0.


proc constructGeomSphericalSurface*(a3: GpAx3; radius: StandardReal): GeomSphericalSurface {.
    constructor, importcpp: "Geom_SphericalSurface(@)",
    header: "Geom_SphericalSurface.hxx".}
proc constructGeomSphericalSurface*(s: GpSphere): GeomSphericalSurface {.
    constructor, importcpp: "Geom_SphericalSurface(@)",
    header: "Geom_SphericalSurface.hxx".}
proc setRadius*(this: var GeomSphericalSurface; r: StandardReal) {.
    importcpp: "SetRadius", header: "Geom_SphericalSurface.hxx".}
proc setSphere*(this: var GeomSphericalSurface; s: GpSphere) {.importcpp: "SetSphere",
    header: "Geom_SphericalSurface.hxx".}
proc sphere*(this: GeomSphericalSurface): GpSphere {.noSideEffect,
    importcpp: "Sphere", header: "Geom_SphericalSurface.hxx".}
proc uReversedParameter*(this: GeomSphericalSurface; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_SphericalSurface.hxx".}
proc vReversedParameter*(this: GeomSphericalSurface; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_SphericalSurface.hxx".}
proc area*(this: GeomSphericalSurface): StandardReal {.noSideEffect,
    importcpp: "Area", header: "Geom_SphericalSurface.hxx".}
proc bounds*(this: GeomSphericalSurface; u1: var StandardReal; u2: var StandardReal;
            v1: var StandardReal; v2: var StandardReal) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_SphericalSurface.hxx".}
proc coefficients*(this: GeomSphericalSurface; a1: var StandardReal;
                  a2: var StandardReal; a3: var StandardReal; b1: var StandardReal;
                  b2: var StandardReal; b3: var StandardReal; c1: var StandardReal;
                  c2: var StandardReal; c3: var StandardReal; d: var StandardReal) {.
    noSideEffect, importcpp: "Coefficients", header: "Geom_SphericalSurface.hxx".}
proc radius*(this: GeomSphericalSurface): StandardReal {.noSideEffect,
    importcpp: "Radius", header: "Geom_SphericalSurface.hxx".}
proc volume*(this: GeomSphericalSurface): StandardReal {.noSideEffect,
    importcpp: "Volume", header: "Geom_SphericalSurface.hxx".}
proc isUClosed*(this: GeomSphericalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_SphericalSurface.hxx".}
proc isVClosed*(this: GeomSphericalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_SphericalSurface.hxx".}
proc isUPeriodic*(this: GeomSphericalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_SphericalSurface.hxx".}
proc isVPeriodic*(this: GeomSphericalSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_SphericalSurface.hxx".}
proc uIso*(this: GeomSphericalSurface; u: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_SphericalSurface.hxx".}
proc vIso*(this: GeomSphericalSurface; v: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_SphericalSurface.hxx".}
proc d0*(this: GeomSphericalSurface; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_SphericalSurface.hxx".}
proc d1*(this: GeomSphericalSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.noSideEffect, importcpp: "D1",
                                    header: "Geom_SphericalSurface.hxx".}
proc d2*(this: GeomSphericalSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec) {.
    noSideEffect, importcpp: "D2", header: "Geom_SphericalSurface.hxx".}
proc d3*(this: GeomSphericalSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec;
        d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.noSideEffect,
    importcpp: "D3", header: "Geom_SphericalSurface.hxx".}
proc dn*(this: GeomSphericalSurface; u: StandardReal; v: StandardReal;
        nu: StandardInteger; nv: StandardInteger): GpVec {.noSideEffect,
    importcpp: "DN", header: "Geom_SphericalSurface.hxx".}
proc transform*(this: var GeomSphericalSurface; t: GpTrsf) {.importcpp: "Transform",
    header: "Geom_SphericalSurface.hxx".}
proc copy*(this: GeomSphericalSurface): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_SphericalSurface.hxx".}
proc dumpJson*(this: GeomSphericalSurface; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_SphericalSurface.hxx".}
type
  GeomSphericalSurfacebaseType* = GeomElementarySurface

proc getTypeName*(): cstring {.importcpp: "Geom_SphericalSurface::get_type_name(@)",
                            header: "Geom_SphericalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_SphericalSurface::get_type_descriptor(@)",
    header: "Geom_SphericalSurface.hxx".}
proc dynamicType*(this: GeomSphericalSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_SphericalSurface.hxx".}

