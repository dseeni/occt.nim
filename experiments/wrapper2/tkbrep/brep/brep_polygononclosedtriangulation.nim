##  Created on: 1995-03-15
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_PolygonOnClosedTriangulation"
type
  HandleBRepPolygonOnClosedTriangulation* = Handle[
      BRepPolygonOnClosedTriangulation]

## ! A representation by two arrays of nodes on a
## ! triangulation.

type
  BRepPolygonOnClosedTriangulation* {.importcpp: "BRep_PolygonOnClosedTriangulation", header: "BRep_PolygonOnClosedTriangulation.hxx",
                                     bycopy.} = object of BRepPolygonOnTriangulation


proc newBRepPolygonOnClosedTriangulation*(p1: Handle[PolyPolygonOnTriangulation];
    p2: Handle[PolyPolygonOnTriangulation]; tr: Handle[PolyTriangulation];
    L: TopLocLocation): BRepPolygonOnClosedTriangulation {.cdecl, constructor,
    importcpp: "BRep_PolygonOnClosedTriangulation(@)", dynlib: tkbrep.}
proc isPolygonOnClosedTriangulation*(this: BRepPolygonOnClosedTriangulation): bool {.
    noSideEffect, cdecl, importcpp: "IsPolygonOnClosedTriangulation", dynlib: tkbrep.}
proc polygonOnTriangulation2*(this: var BRepPolygonOnClosedTriangulation;
                             p2: Handle[PolyPolygonOnTriangulation]) {.cdecl,
    importcpp: "PolygonOnTriangulation2", dynlib: tkbrep.}
proc polygonOnTriangulation2*(this: BRepPolygonOnClosedTriangulation): Handle[
    PolyPolygonOnTriangulation] {.noSideEffect, cdecl,
                                 importcpp: "PolygonOnTriangulation2",
                                 dynlib: tkbrep.}
proc copy*(this: BRepPolygonOnClosedTriangulation): Handle[BRepCurveRepresentation] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkbrep.}
proc dumpJson*(this: BRepPolygonOnClosedTriangulation;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson", dynlib: tkbrep.}