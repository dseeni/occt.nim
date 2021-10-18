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
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Vector"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_VectorWithMagnitude"
type
  HandleGeomVectorWithMagnitude* = Handle[GeomVectorWithMagnitude]

## ! Defines a vector with magnitude.
## ! A vector with magnitude can have a zero length.

type
  GeomVectorWithMagnitude* {.importcpp: "Geom_VectorWithMagnitude",
                            header: "Geom_VectorWithMagnitude.hxx", bycopy.} = object of GeomVector ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## transient
                                                                                             ## copy
                                                                                             ## of
                                                                                             ## V.


proc newGeomVectorWithMagnitude*(v: Vec): GeomVectorWithMagnitude {.cdecl,
    constructor, importcpp: "Geom_VectorWithMagnitude(@)", dynlib: tkmath.}
proc newGeomVectorWithMagnitude*(x: cfloat; y: cfloat; z: cfloat): GeomVectorWithMagnitude {.
    cdecl, constructor, importcpp: "Geom_VectorWithMagnitude(@)", dynlib: tkmath.}
proc newGeomVectorWithMagnitude*(p1: Pnt; p2: Pnt): GeomVectorWithMagnitude {.cdecl,
    constructor, importcpp: "Geom_VectorWithMagnitude(@)", dynlib: tkmath.}
proc setCoord*(this: var GeomVectorWithMagnitude; x: cfloat; y: cfloat; z: cfloat) {.
    cdecl, importcpp: "SetCoord", dynlib: tkmath.}
proc setVec*(this: var GeomVectorWithMagnitude; v: Vec) {.cdecl, importcpp: "SetVec",
    dynlib: tkmath.}
proc setX*(this: var GeomVectorWithMagnitude; x: cfloat) {.cdecl, importcpp: "SetX",
    dynlib: tkmath.}
proc setY*(this: var GeomVectorWithMagnitude; y: cfloat) {.cdecl, importcpp: "SetY",
    dynlib: tkmath.}
proc setZ*(this: var GeomVectorWithMagnitude; z: cfloat) {.cdecl, importcpp: "SetZ",
    dynlib: tkmath.}
proc magnitude*(this: GeomVectorWithMagnitude): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", dynlib: tkmath.}
proc squareMagnitude*(this: GeomVectorWithMagnitude): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkmath.}
proc add*(this: var GeomVectorWithMagnitude; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Add", dynlib: tkmath.}
proc added*(this: GeomVectorWithMagnitude; other: Handle[GeomVector]): Handle[
    GeomVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Added",
                              dynlib: tkmath.}
proc cross*(this: var GeomVectorWithMagnitude; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Cross", dynlib: tkmath.}
proc crossed*(this: GeomVectorWithMagnitude; other: Handle[GeomVector]): Handle[
    GeomVector] {.noSideEffect, cdecl, importcpp: "Crossed", dynlib: tkmath.}
proc crossCross*(this: var GeomVectorWithMagnitude; v1: Handle[GeomVector];
                v2: Handle[GeomVector]) {.cdecl, importcpp: "CrossCross",
                                        dynlib: tkmath.}
proc crossCrossed*(this: GeomVectorWithMagnitude; v1: Handle[GeomVector];
                  v2: Handle[GeomVector]): Handle[GeomVector] {.noSideEffect, cdecl,
    importcpp: "CrossCrossed", dynlib: tkmath.}
proc divide*(this: var GeomVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "Divide", dynlib: tkmath.}
proc divided*(this: GeomVectorWithMagnitude; scalar: cfloat): Handle[
    GeomVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Divided",
                              dynlib: tkmath.}
proc multiplied*(this: GeomVectorWithMagnitude; scalar: cfloat): Handle[
    GeomVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Multiplied",
                              dynlib: tkmath.}
proc multiply*(this: var GeomVectorWithMagnitude; scalar: cfloat) {.cdecl,
    importcpp: "Multiply", dynlib: tkmath.}
proc normalize*(this: var GeomVectorWithMagnitude) {.cdecl, importcpp: "Normalize",
    dynlib: tkmath.}
proc normalized*(this: GeomVectorWithMagnitude): Handle[GeomVectorWithMagnitude] {.
    noSideEffect, cdecl, importcpp: "Normalized", dynlib: tkmath.}
proc subtract*(this: var GeomVectorWithMagnitude; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Subtract", dynlib: tkmath.}
proc subtracted*(this: GeomVectorWithMagnitude; other: Handle[GeomVector]): Handle[
    GeomVectorWithMagnitude] {.noSideEffect, cdecl, importcpp: "Subtracted",
                              dynlib: tkmath.}
proc transform*(this: var GeomVectorWithMagnitude; t: Trsf) {.cdecl,
    importcpp: "Transform", dynlib: tkmath.}
proc copy*(this: GeomVectorWithMagnitude): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Copy", dynlib: tkmath.}