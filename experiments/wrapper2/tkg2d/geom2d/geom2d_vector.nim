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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Vector"
type
  HandleGeom2dVector* = Handle[Geom2dVector]

## ! The abstract class Vector describes the common
## ! behavior of vectors in 2D space.
## ! The Geom2d package provides two concrete
## ! classes of vectors: Geom2d_Direction (unit vector)
## ! and Geom2d_VectorWithMagnitude.

type
  Geom2dVector* {.importcpp: "Geom2d_Vector", header: "Geom2d_Vector.hxx", bycopy.} = object of Geom2dGeometry ##
                                                                                                     ## !
                                                                                                     ## Reverses
                                                                                                     ## the
                                                                                                     ## vector
                                                                                                     ## <me>.


proc reverse*(this: var Geom2dVector) {.cdecl, importcpp: "Reverse", dynlib: tkernel.}
proc reversed*(this: Geom2dVector): Handle[Geom2dVector] {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkernel.}
proc angle*(this: Geom2dVector; other: Handle[Geom2dVector]): cfloat {.noSideEffect,
    cdecl, importcpp: "Angle", dynlib: tkernel.}
proc coord*(this: Geom2dVector; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", dynlib: tkernel.}
proc magnitude*(this: Geom2dVector): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", dynlib: tkernel.}
proc squareMagnitude*(this: Geom2dVector): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", dynlib: tkernel.}
proc x*(this: Geom2dVector): cfloat {.noSideEffect, cdecl, importcpp: "X",
                                  dynlib: tkernel.}
proc y*(this: Geom2dVector): cfloat {.noSideEffect, cdecl, importcpp: "Y",
                                  dynlib: tkernel.}
proc crossed*(this: Geom2dVector; other: Handle[Geom2dVector]): cfloat {.noSideEffect,
    cdecl, importcpp: "Crossed", dynlib: tkernel.}
proc dot*(this: Geom2dVector; other: Handle[Geom2dVector]): cfloat {.noSideEffect,
    cdecl, importcpp: "Dot", dynlib: tkernel.}
proc vec2d*(this: Geom2dVector): Vec2d {.noSideEffect, cdecl, importcpp: "Vec2d",
                                     dynlib: tkernel.}