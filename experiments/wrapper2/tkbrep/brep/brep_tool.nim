##  Created on: 1993-07-07
##  Created by: Remi LEQUETTE
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepTool* {.importcpp: "BRep_Tool", header: "BRep_Tool.hxx", bycopy.} = object ## ! If S is Shell, returns True if it has no free
                                                                         ## boundaries
                                                                         ## (edges).
                                                                         ## ! If S is Wire, returns True if it has no free ends
                                                                         ## (vertices).
                                                                         ## !
                                                                         ## (Internal and
                                                                         ## External
                                                                         ## sub-shepes are ignored in these checks)
                                                                         ## ! If S is Edge, returns True if its
                                                                         ## vertices are the same.
                                                                         ## ! For other shape types returns
                                                                         ## S.Closed().


proc isClosed*(s: TopoDS_Shape): bool {.cdecl, importcpp: "BRep_Tool::IsClosed(@)",
                                    dynlib: tkbrep.}
proc surface*(f: TopoDS_Face; L: var TopLocLocation): Handle[GeomSurface] {.cdecl,
    importcpp: "BRep_Tool::Surface(@)", dynlib: tkbrep.}
proc surface*(f: TopoDS_Face): Handle[GeomSurface] {.cdecl,
    importcpp: "BRep_Tool::Surface(@)", dynlib: tkbrep.}
proc triangulation*(f: TopoDS_Face; L: var TopLocLocation): Handle[PolyTriangulation] {.
    cdecl, importcpp: "BRep_Tool::Triangulation(@)", dynlib: tkbrep.}
proc tolerance*(f: TopoDS_Face): cfloat {.cdecl,
                                      importcpp: "BRep_Tool::Tolerance(@)",
                                      dynlib: tkbrep.}
proc naturalRestriction*(f: TopoDS_Face): bool {.cdecl,
    importcpp: "BRep_Tool::NaturalRestriction(@)", dynlib: tkbrep.}
proc isGeometric*(f: TopoDS_Face): bool {.cdecl,
                                      importcpp: "BRep_Tool::IsGeometric(@)",
                                      dynlib: tkbrep.}
proc isGeometric*(e: TopoDS_Edge): bool {.cdecl,
                                      importcpp: "BRep_Tool::IsGeometric(@)",
                                      dynlib: tkbrep.}
proc curve*(e: TopoDS_Edge; L: var TopLocLocation; first: var cfloat; last: var cfloat): Handle[
    GeomCurve] {.cdecl, importcpp: "BRep_Tool::Curve(@)", dynlib: tkbrep.}
proc curve*(e: TopoDS_Edge; first: var cfloat; last: var cfloat): Handle[GeomCurve] {.
    cdecl, importcpp: "BRep_Tool::Curve(@)", dynlib: tkbrep.}
proc polygon3D*(e: TopoDS_Edge; L: var TopLocLocation): Handle[PolyPolygon3D] {.cdecl,
    importcpp: "BRep_Tool::Polygon3D(@)", dynlib: tkbrep.}
proc curveOnSurface*(e: TopoDS_Edge; f: TopoDS_Face; first: var cfloat;
                    last: var cfloat; theIsStored: ptr bool = nil): Handle[Geom2dCurve] {.
    cdecl, importcpp: "BRep_Tool::CurveOnSurface(@)", dynlib: tkbrep.}
proc curveOnSurface*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                    first: var cfloat; last: var cfloat; theIsStored: ptr bool = nil): Handle[
    Geom2dCurve] {.cdecl, importcpp: "BRep_Tool::CurveOnSurface(@)", dynlib: tkbrep.}
proc curveOnPlane*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                  first: var cfloat; last: var cfloat): Handle[Geom2dCurve] {.cdecl,
    importcpp: "BRep_Tool::CurveOnPlane(@)", dynlib: tkbrep.}
proc curveOnSurface*(e: TopoDS_Edge; c: var Handle[Geom2dCurve];
                    s: var Handle[GeomSurface]; L: var TopLocLocation;
                    first: var cfloat; last: var cfloat) {.cdecl,
    importcpp: "BRep_Tool::CurveOnSurface(@)", dynlib: tkbrep.}
proc curveOnSurface*(e: TopoDS_Edge; c: var Handle[Geom2dCurve];
                    s: var Handle[GeomSurface]; L: var TopLocLocation;
                    first: var cfloat; last: var cfloat; index: cint) {.cdecl,
    importcpp: "BRep_Tool::CurveOnSurface(@)", dynlib: tkbrep.}
proc polygonOnSurface*(e: TopoDS_Edge; f: TopoDS_Face): Handle[PolyPolygon2D] {.cdecl,
    importcpp: "BRep_Tool::PolygonOnSurface(@)", dynlib: tkbrep.}
proc polygonOnSurface*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation): Handle[
    PolyPolygon2D] {.cdecl, importcpp: "BRep_Tool::PolygonOnSurface(@)",
                    dynlib: tkbrep.}
proc polygonOnSurface*(e: TopoDS_Edge; c: var Handle[PolyPolygon2D];
                      s: var Handle[GeomSurface]; L: var TopLocLocation) {.cdecl,
    importcpp: "BRep_Tool::PolygonOnSurface(@)", dynlib: tkbrep.}
proc polygonOnSurface*(e: TopoDS_Edge; c: var Handle[PolyPolygon2D];
                      s: var Handle[GeomSurface]; L: var TopLocLocation; index: cint) {.
    cdecl, importcpp: "BRep_Tool::PolygonOnSurface(@)", dynlib: tkbrep.}
proc polygonOnTriangulation*(e: TopoDS_Edge; t: Handle[PolyTriangulation];
                            L: TopLocLocation): Handle[PolyPolygonOnTriangulation] {.
    cdecl, importcpp: "BRep_Tool::PolygonOnTriangulation(@)", dynlib: tkbrep.}
proc polygonOnTriangulation*(e: TopoDS_Edge;
                            p: var Handle[PolyPolygonOnTriangulation];
                            t: var Handle[PolyTriangulation]; L: var TopLocLocation) {.
    cdecl, importcpp: "BRep_Tool::PolygonOnTriangulation(@)", dynlib: tkbrep.}
proc polygonOnTriangulation*(e: TopoDS_Edge;
                            p: var Handle[PolyPolygonOnTriangulation];
                            t: var Handle[PolyTriangulation];
                            L: var TopLocLocation; index: cint) {.cdecl,
    importcpp: "BRep_Tool::PolygonOnTriangulation(@)", dynlib: tkbrep.}
proc isClosed*(e: TopoDS_Edge; f: TopoDS_Face): bool {.cdecl,
    importcpp: "BRep_Tool::IsClosed(@)", dynlib: tkbrep.}
proc isClosed*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation): bool {.cdecl,
    importcpp: "BRep_Tool::IsClosed(@)", dynlib: tkbrep.}
proc isClosed*(e: TopoDS_Edge; t: Handle[PolyTriangulation]; L: TopLocLocation): bool {.
    cdecl, importcpp: "BRep_Tool::IsClosed(@)", dynlib: tkbrep.}
proc tolerance*(e: TopoDS_Edge): cfloat {.cdecl,
                                      importcpp: "BRep_Tool::Tolerance(@)",
                                      dynlib: tkbrep.}
proc sameParameter*(e: TopoDS_Edge): bool {.cdecl, importcpp: "BRep_Tool::SameParameter(@)",
                                        dynlib: tkbrep.}
proc sameRange*(e: TopoDS_Edge): bool {.cdecl, importcpp: "BRep_Tool::SameRange(@)",
                                    dynlib: tkbrep.}
proc degenerated*(e: TopoDS_Edge): bool {.cdecl,
                                      importcpp: "BRep_Tool::Degenerated(@)",
                                      dynlib: tkbrep.}
proc range*(e: TopoDS_Edge; first: var cfloat; last: var cfloat) {.cdecl,
    importcpp: "BRep_Tool::Range(@)", dynlib: tkbrep.}
proc range*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
           first: var cfloat; last: var cfloat) {.cdecl,
    importcpp: "BRep_Tool::Range(@)", dynlib: tkbrep.}
proc range*(e: TopoDS_Edge; f: TopoDS_Face; first: var cfloat; last: var cfloat) {.cdecl,
    importcpp: "BRep_Tool::Range(@)", dynlib: tkbrep.}
proc uVPoints*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
              pFirst: var Pnt2d; pLast: var Pnt2d) {.cdecl,
    importcpp: "BRep_Tool::UVPoints(@)", dynlib: tkbrep.}
proc uVPoints*(e: TopoDS_Edge; f: TopoDS_Face; pFirst: var Pnt2d; pLast: var Pnt2d) {.
    cdecl, importcpp: "BRep_Tool::UVPoints(@)", dynlib: tkbrep.}
proc setUVPoints*(e: TopoDS_Edge; s: Handle[GeomSurface]; L: TopLocLocation;
                 pFirst: Pnt2d; pLast: Pnt2d) {.cdecl,
    importcpp: "BRep_Tool::SetUVPoints(@)", dynlib: tkbrep.}
proc setUVPoints*(e: TopoDS_Edge; f: TopoDS_Face; pFirst: Pnt2d; pLast: Pnt2d) {.cdecl,
    importcpp: "BRep_Tool::SetUVPoints(@)", dynlib: tkbrep.}
proc hasContinuity*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): bool {.cdecl,
    importcpp: "BRep_Tool::HasContinuity(@)", dynlib: tkbrep.}
proc continuity*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): GeomAbsShape {.
    cdecl, importcpp: "BRep_Tool::Continuity(@)", dynlib: tkbrep.}
proc hasContinuity*(e: TopoDS_Edge; s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                   l1: TopLocLocation; l2: TopLocLocation): bool {.cdecl,
    importcpp: "BRep_Tool::HasContinuity(@)", dynlib: tkbrep.}
proc continuity*(e: TopoDS_Edge; s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                l1: TopLocLocation; l2: TopLocLocation): GeomAbsShape {.cdecl,
    importcpp: "BRep_Tool::Continuity(@)", dynlib: tkbrep.}
proc hasContinuity*(e: TopoDS_Edge): bool {.cdecl, importcpp: "BRep_Tool::HasContinuity(@)",
                                        dynlib: tkbrep.}
proc maxContinuity*(theEdge: TopoDS_Edge): GeomAbsShape {.cdecl,
    importcpp: "BRep_Tool::MaxContinuity(@)", dynlib: tkbrep.}
proc pnt*(v: TopoDS_Vertex): Pnt {.cdecl, importcpp: "BRep_Tool::Pnt(@)",
                               dynlib: tkbrep.}
proc tolerance*(v: TopoDS_Vertex): cfloat {.cdecl,
                                        importcpp: "BRep_Tool::Tolerance(@)",
                                        dynlib: tkbrep.}
proc parameter*(theV: TopoDS_Vertex; theE: TopoDS_Edge; theParam: var cfloat): bool {.
    cdecl, importcpp: "BRep_Tool::Parameter(@)", dynlib: tkbrep.}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge): cfloat {.cdecl,
    importcpp: "BRep_Tool::Parameter(@)", dynlib: tkbrep.}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge; f: TopoDS_Face): cfloat {.cdecl,
    importcpp: "BRep_Tool::Parameter(@)", dynlib: tkbrep.}
proc parameter*(v: TopoDS_Vertex; e: TopoDS_Edge; s: Handle[GeomSurface];
               L: TopLocLocation): cfloat {.cdecl,
    importcpp: "BRep_Tool::Parameter(@)", dynlib: tkbrep.}
proc parameters*(v: TopoDS_Vertex; f: TopoDS_Face): Pnt2d {.cdecl,
    importcpp: "BRep_Tool::Parameters(@)", dynlib: tkbrep.}
proc maxTolerance*(theShape: TopoDS_Shape; theSubShape: TopAbsShapeEnum): cfloat {.
    cdecl, importcpp: "BRep_Tool::MaxTolerance(@)", dynlib: tkbrep.}