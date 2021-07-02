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

discard "forward decl of Geom_Conic"
discard "forward decl of Geom_Conic"
type
  HandleGeomConic* = Handle[GeomConic]

## ! The abstract class Conic describes the common
## ! behavior of conic curves in 3D space and, in
## ! particular, their general characteristics. The Geom
## ! package provides four concrete classes of conics:
## ! Geom_Circle, Geom_Ellipse, Geom_Hyperbola and Geom_Parabola.
## ! A conic is positioned in space with a right-handed
## ! coordinate system (gp_Ax2 object), where:
## ! - the origin is the center of the conic (or the apex in
## ! the case of a parabola),
## ! - the origin, "X Direction" and "Y Direction" define the
## ! plane of the conic.
## ! This coordinate system is the local coordinate
## ! system of the conic.
## ! The "main Direction" of this coordinate system is the
## ! vector normal to the plane of the conic. The axis, of
## ! which the origin and unit vector are respectively the
## ! origin and "main Direction" of the local coordinate
## ! system, is termed the "Axis" or "main Axis" of the conic.
## ! The "main Direction" of the local coordinate system
## ! gives an explicit orientation to the conic, determining
## ! the direction in which the parameter increases along
## ! the conic. The "X Axis" of the local coordinate system
## ! also defines the origin of the parameter of the conic.

type
  GeomConic* {.importcpp: "Geom_Conic", header: "Geom_Conic.hxx", bycopy.} = object of GeomCurve ##
                                                                                       ## !
                                                                                       ## Changes
                                                                                       ## the
                                                                                       ## orientation
                                                                                       ## of
                                                                                       ## the
                                                                                       ## conic's
                                                                                       ## plane.
                                                                                       ## The
                                                                                       ## normal
                                                                                       ##
                                                                                       ## !
                                                                                       ## axis
                                                                                       ## to
                                                                                       ## the
                                                                                       ## plane
                                                                                       ## is
                                                                                       ## A1.
                                                                                       ## The
                                                                                       ## XAxis
                                                                                       ## and
                                                                                       ## the
                                                                                       ## YAxis
                                                                                       ## are
                                                                                       ## recomputed.
                                                                                       ##
                                                                                       ## !
                                                                                       ##
                                                                                       ## !
                                                                                       ## raised
                                                                                       ## if
                                                                                       ## the
                                                                                       ## A1
                                                                                       ## is
                                                                                       ## parallel
                                                                                       ## to
                                                                                       ## the
                                                                                       ## XAxis
                                                                                       ## of
                                                                                       ## the
                                                                                       ## conic.


proc setAxis*(this: var GeomConic; theA1: GpAx1) {.importcpp: "SetAxis",
    header: "Geom_Conic.hxx".}
proc setLocation*(this: var GeomConic; theP: GpPnt) {.importcpp: "SetLocation",
    header: "Geom_Conic.hxx".}
proc setPosition*(this: var GeomConic; theA2: GpAx2) {.importcpp: "SetPosition",
    header: "Geom_Conic.hxx".}
proc axis*(this: GeomConic): GpAx1 {.noSideEffect, importcpp: "Axis",
                                 header: "Geom_Conic.hxx".}
proc location*(this: GeomConic): GpPnt {.noSideEffect, importcpp: "Location",
                                     header: "Geom_Conic.hxx".}
proc position*(this: GeomConic): GpAx2 {.noSideEffect, importcpp: "Position",
                                     header: "Geom_Conic.hxx".}
proc eccentricity*(this: GeomConic): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "Geom_Conic.hxx".}
proc xAxis*(this: GeomConic): GpAx1 {.noSideEffect, importcpp: "XAxis",
                                  header: "Geom_Conic.hxx".}
proc yAxis*(this: GeomConic): GpAx1 {.noSideEffect, importcpp: "YAxis",
                                  header: "Geom_Conic.hxx".}
proc reverse*(this: var GeomConic) {.importcpp: "Reverse", header: "Geom_Conic.hxx".}
proc reversedParameter*(this: GeomConic; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter", header: "Geom_Conic.hxx".}
proc continuity*(this: GeomConic): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_Conic.hxx".}
proc isCN*(this: GeomConic; n: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsCN", header: "Geom_Conic.hxx".}
proc dumpJson*(this: GeomConic; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_Conic.hxx".}
type
  GeomConicbaseType* = GeomCurve

proc getTypeName*(): cstring {.importcpp: "Geom_Conic::get_type_name(@)",
                            header: "Geom_Conic.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Conic::get_type_descriptor(@)", header: "Geom_Conic.hxx".}
proc dynamicType*(this: GeomConic): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Conic.hxx".}

