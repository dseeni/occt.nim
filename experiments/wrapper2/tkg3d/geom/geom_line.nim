##  Created on: 1993-03-10
##  Created by: Philippe DAUTRY
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

discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Line"
type
  HandleGeomLine* = Handle[GeomLine]

## ! Describes an infinite line.
## ! A line is defined and positioned in space with an axis
## ! (gp_Ax1 object) which gives it an origin and a unit vector.
## ! The Geom_Line line is parameterized:
## ! P (U) = O + U*Dir, where:
## ! - P is the point of parameter U,
## ! - O is the origin and Dir the unit vector of its positioning axis.
## ! The parameter range is ] -infinite, +infinite [.
## ! The orientation of the line is given by the unit vector
## ! of its positioning axis.

type
  GeomLine* {.importcpp: "Geom_Line", header: "Geom_Line.hxx", bycopy.} = object of GeomCurve ##
                                                                                    ## !
                                                                                    ## Creates
                                                                                    ## a
                                                                                    ## line
                                                                                    ## located
                                                                                    ## in
                                                                                    ## 3D
                                                                                    ## space
                                                                                    ## with
                                                                                    ## the
                                                                                    ## axis
                                                                                    ## placement
                                                                                    ## A1.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## Location
                                                                                    ## of
                                                                                    ## A1
                                                                                    ## is
                                                                                    ## the
                                                                                    ## origin
                                                                                    ## of
                                                                                    ## the
                                                                                    ## line.


proc newGeomLine*(a1: Ax1): GeomLine {.cdecl, constructor, importcpp: "Geom_Line(@)",
                                   dynlib: tkmath.}
proc newGeomLine*(L: Lin): GeomLine {.cdecl, constructor, importcpp: "Geom_Line(@)",
                                  dynlib: tkmath.}
proc newGeomLine*(p: Pnt; v: Dir): GeomLine {.cdecl, constructor,
                                        importcpp: "Geom_Line(@)", dynlib: tkmath.}
proc setLin*(this: var GeomLine; L: Lin) {.cdecl, importcpp: "SetLin", dynlib: tkmath.}
proc setDirection*(this: var GeomLine; v: Dir) {.cdecl, importcpp: "SetDirection",
    dynlib: tkmath.}
proc setLocation*(this: var GeomLine; p: Pnt) {.cdecl, importcpp: "SetLocation",
    dynlib: tkmath.}
proc setPosition*(this: var GeomLine; a1: Ax1) {.cdecl, importcpp: "SetPosition",
    dynlib: tkmath.}
proc lin*(this: GeomLine): Lin {.noSideEffect, cdecl, importcpp: "Lin", dynlib: tkmath.}
proc position*(this: GeomLine): Ax1 {.noSideEffect, cdecl, importcpp: "Position",
                                  dynlib: tkmath.}
proc reverse*(this: var GeomLine) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversedParameter*(this: GeomLine; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", dynlib: tkmath.}
proc firstParameter*(this: GeomLine): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkmath.}
proc lastParameter*(this: GeomLine): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkmath.}
proc isClosed*(this: GeomLine): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                   dynlib: tkmath.}
proc isPeriodic*(this: GeomLine): bool {.noSideEffect, cdecl, importcpp: "IsPeriodic",
                                     dynlib: tkmath.}
proc continuity*(this: GeomLine): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkmath.}
proc isCN*(this: GeomLine; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                      dynlib: tkmath.}
proc d0*(this: GeomLine; u: cfloat; p: var Pnt) {.noSideEffect, cdecl, importcpp: "D0",
    dynlib: tkmath.}
proc d1*(this: GeomLine; u: cfloat; p: var Pnt; v1: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkmath.}
proc d2*(this: GeomLine; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.noSideEffect,
    cdecl, importcpp: "D2", dynlib: tkmath.}
proc d3*(this: GeomLine; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkmath.}
proc dn*(this: GeomLine; u: cfloat; n: cint): Vec {.noSideEffect, cdecl, importcpp: "DN",
    dynlib: tkmath.}
proc transform*(this: var GeomLine; t: Trsf) {.cdecl, importcpp: "Transform",
    dynlib: tkmath.}
proc transformedParameter*(this: GeomLine; u: cfloat; t: Trsf): cfloat {.noSideEffect,
    cdecl, importcpp: "TransformedParameter", dynlib: tkmath.}
proc parametricTransformation*(this: GeomLine; t: Trsf): cfloat {.noSideEffect, cdecl,
    importcpp: "ParametricTransformation", dynlib: tkmath.}
proc copy*(this: GeomLine): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkmath.}
proc dumpJson*(this: GeomLine; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}