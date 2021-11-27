##  Created on: 1995-03-06
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NullObject"
discard "forward decl of Poly_Triangulation"
type
  HandlePolyTriangulation* = Handle[PolyTriangulation]

## ! Provides a triangulation for a surface, a set of surfaces, or
## ! more generally a shape.
## ! A triangulation consists of an approximate representation
## ! of the actual shape, using a collection of points and
## ! triangles. The points are located on the surface. The
## ! edges of the triangles connect adjacent points with a
## ! straight line that approximates the true curve on the surface.
## ! A triangulation comprises:
## ! -   A table of 3D nodes (3D points on the surface).
## ! -   A table of triangles. Each triangle (Poly_Triangle
## ! object) comprises a triplet of indices in the table of 3D
## ! nodes specific to the triangulation.
## ! -   A table of 2D nodes (2D points), parallel to the table of
## ! 3D nodes. This table is optional. If it exists, the
## ! coordinates of a 2D point are the (u, v) parameters
## ! of the corresponding 3D point on the surface
## ! approximated by the triangulation.
## ! -   A deflection (optional), which maximizes the distance
## ! from a point on the surface to the corresponding point
## ! on its approximate triangulation.
## ! In many cases, algorithms do not need to work with the
## ! exact representation of a surface. A triangular
## ! representation induces simpler and more robust adjusting,
## ! faster performances, and the results are as good.
## ! This is a Transient class.

type
  PolyTriangulation* {.importcpp: "Poly_Triangulation",
                      header: "Poly_Triangulation.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Constructs
                                                                                        ## a
                                                                                        ## triangulation
                                                                                        ## from
                                                                                        ## a
                                                                                        ## set
                                                                                        ## of
                                                                                        ## triangles.
                                                                                        ## The
                                                                                        ##
                                                                                        ## !
                                                                                        ## triangulation
                                                                                        ## is
                                                                                        ## initialized
                                                                                        ## without
                                                                                        ## a
                                                                                        ## triangle
                                                                                        ## or
                                                                                        ## a
                                                                                        ## node,
                                                                                        ## but
                                                                                        ## capable
                                                                                        ## of
                                                                                        ##
                                                                                        ## !
                                                                                        ## containing
                                                                                        ## nbNodes
                                                                                        ## nodes,
                                                                                        ## and
                                                                                        ## nbTriangles
                                                                                        ##
                                                                                        ## !
                                                                                        ## triangles.
                                                                                        ## Here
                                                                                        ## the
                                                                                        ## UVNodes
                                                                                        ## flag
                                                                                        ## indicates
                                                                                        ## whether
                                                                                        ##
                                                                                        ## !
                                                                                        ## 2D
                                                                                        ## nodes
                                                                                        ## will
                                                                                        ## be
                                                                                        ## associated
                                                                                        ## with
                                                                                        ## 3D
                                                                                        ## ones,
                                                                                        ## (i.e.
                                                                                        ## to
                                                                                        ##
                                                                                        ## !
                                                                                        ## enable
                                                                                        ## a
                                                                                        ## 2D
                                                                                        ## representation).


proc newPolyTriangulation*(nbNodes: cint; nbTriangles: cint; uVNodes: bool): PolyTriangulation {.
    cdecl, constructor, importcpp: "Poly_Triangulation(@)", header: "Poly_Triangulation.hxx".}
proc newPolyTriangulation*(nodes: TColgpArray1OfPnt;
                          triangles: PolyArray1OfTriangle): PolyTriangulation {.
    cdecl, constructor, importcpp: "Poly_Triangulation(@)", header: "Poly_Triangulation.hxx".}
proc newPolyTriangulation*(nodes: TColgpArray1OfPnt; uVNodes: TColgpArray1OfPnt2d;
                          triangles: PolyArray1OfTriangle): PolyTriangulation {.
    cdecl, constructor, importcpp: "Poly_Triangulation(@)", header: "Poly_Triangulation.hxx".}
proc copy*(this: PolyTriangulation): Handle[PolyTriangulation] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Poly_Triangulation.hxx".}
proc newPolyTriangulation*(theTriangulation: Handle[PolyTriangulation]): PolyTriangulation {.
    cdecl, constructor, importcpp: "Poly_Triangulation(@)", header: "Poly_Triangulation.hxx".}
proc deflection*(this: PolyTriangulation): cfloat {.noSideEffect, cdecl,
    importcpp: "Deflection", header: "Poly_Triangulation.hxx".}
proc deflection*(this: var PolyTriangulation; theDeflection: cfloat) {.cdecl,
    importcpp: "Deflection", header: "Poly_Triangulation.hxx".}
proc removeUVNodes*(this: var PolyTriangulation) {.cdecl, importcpp: "RemoveUVNodes",
    header: "Poly_Triangulation.hxx".}
proc nbNodes*(this: PolyTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NbNodes", header: "Poly_Triangulation.hxx".}
proc nbTriangles*(this: PolyTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NbTriangles", header: "Poly_Triangulation.hxx".}
proc hasUVNodes*(this: PolyTriangulation): bool {.noSideEffect, cdecl,
    importcpp: "HasUVNodes", header: "Poly_Triangulation.hxx".}
proc nodes*(this: PolyTriangulation): TColgpArray1OfPnt {.noSideEffect, cdecl,
    importcpp: "Nodes", header: "Poly_Triangulation.hxx".}
proc changeNodes*(this: var PolyTriangulation): var TColgpArray1OfPnt {.cdecl,
    importcpp: "ChangeNodes", header: "Poly_Triangulation.hxx".}
proc node*(this: PolyTriangulation; theIndex: cint): Pnt {.noSideEffect, cdecl,
    importcpp: "Node", header: "Poly_Triangulation.hxx".}
proc changeNode*(this: var PolyTriangulation; theIndex: cint): var Pnt {.cdecl,
    importcpp: "ChangeNode", header: "Poly_Triangulation.hxx".}
proc uVNodes*(this: PolyTriangulation): TColgpArray1OfPnt2d {.noSideEffect, cdecl,
    importcpp: "UVNodes", header: "Poly_Triangulation.hxx".}
proc changeUVNodes*(this: var PolyTriangulation): var TColgpArray1OfPnt2d {.cdecl,
    importcpp: "ChangeUVNodes", header: "Poly_Triangulation.hxx".}
proc uVNode*(this: PolyTriangulation; theIndex: cint): Pnt2d {.noSideEffect, cdecl,
    importcpp: "UVNode", header: "Poly_Triangulation.hxx".}
proc changeUVNode*(this: var PolyTriangulation; theIndex: cint): var Pnt2d {.cdecl,
    importcpp: "ChangeUVNode", header: "Poly_Triangulation.hxx".}
proc triangles*(this: PolyTriangulation): PolyArray1OfTriangle {.noSideEffect, cdecl,
    importcpp: "Triangles", header: "Poly_Triangulation.hxx".}
proc changeTriangles*(this: var PolyTriangulation): var PolyArray1OfTriangle {.cdecl,
    importcpp: "ChangeTriangles", header: "Poly_Triangulation.hxx".}
proc triangle*(this: PolyTriangulation; theIndex: cint): PolyTriangle {.noSideEffect,
    cdecl, importcpp: "Triangle", header: "Poly_Triangulation.hxx".}
proc changeTriangle*(this: var PolyTriangulation; theIndex: cint): var PolyTriangle {.
    cdecl, importcpp: "ChangeTriangle", header: "Poly_Triangulation.hxx".}
proc setNormals*(this: var PolyTriangulation;
                theNormals: Handle[TShortHArray1OfShortReal]) {.cdecl,
    importcpp: "SetNormals", header: "Poly_Triangulation.hxx".}
proc normals*(this: PolyTriangulation): TShortArray1OfShortReal {.noSideEffect,
    cdecl, importcpp: "Normals", header: "Poly_Triangulation.hxx".}
proc changeNormals*(this: var PolyTriangulation): var TShortArray1OfShortReal {.cdecl,
    importcpp: "ChangeNormals", header: "Poly_Triangulation.hxx".}
proc hasNormals*(this: PolyTriangulation): bool {.noSideEffect, cdecl,
    importcpp: "HasNormals", header: "Poly_Triangulation.hxx".}
proc normal*(this: PolyTriangulation; theIndex: cint): Dir {.noSideEffect, cdecl,
    importcpp: "Normal", header: "Poly_Triangulation.hxx".}
proc setNormal*(this: var PolyTriangulation; theIndex: cint; theNormal: Dir) {.cdecl,
    importcpp: "SetNormal", header: "Poly_Triangulation.hxx".}
proc dumpJson*(this: PolyTriangulation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Poly_Triangulation.hxx".}