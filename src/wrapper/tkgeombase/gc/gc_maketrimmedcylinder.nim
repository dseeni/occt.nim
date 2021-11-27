##  Created on: 1992-09-28
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Cylinder"
type
  GC_MakeTrimmedCylinder* {.importcpp: "GC_MakeTrimmedCylinder",
                           header: "GC_MakeTrimmedCylinder.hxx", bycopy.} = object of GC_Root ##
                                                                                       ## !
                                                                                       ## Make
                                                                                       ## a
                                                                                       ## cylindricalSurface
                                                                                       ## <Cyl>
                                                                                       ## from
                                                                                       ## Geom
                                                                                       ##
                                                                                       ## !
                                                                                       ## Its
                                                                                       ## axis
                                                                                       ## is
                                                                                       ## is
                                                                                       ## <P1P2>
                                                                                       ## and
                                                                                       ## its
                                                                                       ## radius
                                                                                       ## is
                                                                                       ## the
                                                                                       ## distance
                                                                                       ##
                                                                                       ## !
                                                                                       ## between
                                                                                       ## <P3>
                                                                                       ## and
                                                                                       ## <P1P2>.
                                                                                       ##
                                                                                       ## !
                                                                                       ## The
                                                                                       ## height
                                                                                       ## is
                                                                                       ## the
                                                                                       ## distance
                                                                                       ## between
                                                                                       ## P1
                                                                                       ## and
                                                                                       ## P2.


proc newGC_MakeTrimmedCylinder*(p1: Pnt; p2: Pnt; p3: Pnt): GC_MakeTrimmedCylinder {.
    cdecl, constructor, importcpp: "GC_MakeTrimmedCylinder(@)", header: "GC_MakeTrimmedCylinder.hxx".}
proc newGC_MakeTrimmedCylinder*(circ: Circ; height: cfloat): GC_MakeTrimmedCylinder {.
    cdecl, constructor, importcpp: "GC_MakeTrimmedCylinder(@)", header: "GC_MakeTrimmedCylinder.hxx".}
proc newGC_MakeTrimmedCylinder*(a1: Ax1; radius: cfloat; height: cfloat): GC_MakeTrimmedCylinder {.
    cdecl, constructor, importcpp: "GC_MakeTrimmedCylinder(@)", header: "GC_MakeTrimmedCylinder.hxx".}
proc value*(this: GC_MakeTrimmedCylinder): Handle[GeomRectangularTrimmedSurface] {.
    noSideEffect, cdecl, importcpp: "Value", header: "GC_MakeTrimmedCylinder.hxx".}
converter `constopencascade`*(this: GC_MakeTrimmedCylinder): Handle[
    GeomRectangularTrimmedSurface] {.noSideEffect, cdecl, importcpp: "GC_MakeTrimmedCylinder::operator constopencascade",
                                    header: "GC_MakeTrimmedCylinder.hxx".}