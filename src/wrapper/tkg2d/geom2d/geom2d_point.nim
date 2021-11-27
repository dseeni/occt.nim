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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Point"
type
  HandleGeom2dPoint* = Handle[Geom2dPoint]

## ! The abstract class Point describes the common
## ! behavior of geometric points in 2D space.
## ! The Geom2d package also provides the concrete
## ! class Geom2d_CartesianPoint.

type
  Geom2dPoint* {.importcpp: "Geom2d_Point", header: "Geom2d_Point.hxx", bycopy.} = object of Geom2dGeometry ##
                                                                                                  ## !
                                                                                                  ## returns
                                                                                                  ## the
                                                                                                  ## Coordinates
                                                                                                  ## of
                                                                                                  ## <me>.


proc coord*(this: Geom2dPoint; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "Geom2d_Point.hxx".}
proc pnt2d*(this: Geom2dPoint): Pnt2d {.noSideEffect, cdecl, importcpp: "Pnt2d",
                                    header: "Geom2d_Point.hxx".}
proc x*(this: Geom2dPoint): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "Geom2d_Point.hxx".}
proc y*(this: Geom2dPoint): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "Geom2d_Point.hxx".}
proc distance*(this: Geom2dPoint; other: Handle[Geom2dPoint]): cfloat {.noSideEffect,
    cdecl, importcpp: "Distance", header: "Geom2d_Point.hxx".}
proc squareDistance*(this: Geom2dPoint; other: Handle[Geom2dPoint]): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance", header: "Geom2d_Point.hxx".}
proc dumpJson*(this: Geom2dPoint; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Point.hxx".}