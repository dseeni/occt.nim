##  Created on: 1998-01-24
##  Created by: Julia GERASIMOVA
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Geom_Plane"
type
  HandlePrsDimEqualDistanceRelation* = Handle[PrsDimEqualDistanceRelation]

## ! A framework to display equivalent distances between
## ! shapes and a given plane.
## ! The distance is the length of a projection from the
## ! shape to the plane.
## ! These distances are used to compare shapes by this vector alone.

type
  PrsDimEqualDistanceRelation* {.importcpp: "PrsDim_EqualDistanceRelation",
                                header: "PrsDim_EqualDistanceRelation.hxx", bycopy.} = object of PrsDimRelation ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## a
                                                                                                         ## framework
                                                                                                         ## to
                                                                                                         ## display
                                                                                                         ## equivalent
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## distances
                                                                                                         ## between
                                                                                                         ## the
                                                                                                         ## shapes
                                                                                                         ## aShape1,
                                                                                                         ## aShape2,
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## aShape3,
                                                                                                         ## aShape4
                                                                                                         ## and
                                                                                                         ## the
                                                                                                         ## plane
                                                                                                         ## aPlane.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## The
                                                                                                         ## distance
                                                                                                         ## is
                                                                                                         ## the
                                                                                                         ## length
                                                                                                         ## of
                                                                                                         ## a
                                                                                                         ## projection
                                                                                                         ## from
                                                                                                         ## the
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## shape
                                                                                                         ## to
                                                                                                         ## the
                                                                                                         ## plane.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Computes
                                                                                                         ## the
                                                                                                         ## location
                                                                                                         ## of
                                                                                                         ## an
                                                                                                         ## intreval
                                                                                                         ## between
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## between
                                                                                                         ## two
                                                                                                         ## edges.
                                                                                                         ## FirstAttach
                                                                                                         ## ,
                                                                                                         ## SecondAttach
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## are
                                                                                                         ## the
                                                                                                         ## returned
                                                                                                         ## extreme
                                                                                                         ## points
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## interval.


proc newPrsDimEqualDistanceRelation*(aShape1: TopoDS_Shape; aShape2: TopoDS_Shape;
                                    aShape3: TopoDS_Shape; aShape4: TopoDS_Shape;
                                    aPlane: Handle[GeomPlane]): PrsDimEqualDistanceRelation {.
    cdecl, constructor, importcpp: "PrsDim_EqualDistanceRelation(@)", header: "PrsDim_EqualDistanceRelation.hxx".}
proc setShape3*(this: var PrsDimEqualDistanceRelation; aShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape3", header: "PrsDim_EqualDistanceRelation.hxx".}
proc shape3*(this: PrsDimEqualDistanceRelation): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape3", header: "PrsDim_EqualDistanceRelation.hxx".}
proc setShape4*(this: var PrsDimEqualDistanceRelation; aShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape4", header: "PrsDim_EqualDistanceRelation.hxx".}
proc shape4*(this: PrsDimEqualDistanceRelation): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape4", header: "PrsDim_EqualDistanceRelation.hxx".}
proc computeTwoEdgesLength*(aPresentation: Handle[Prs3dPresentation];
                           aDrawer: Handle[Prs3dDrawer]; arrowSize: cfloat;
                           firstEdge: TopoDS_Edge; secondEdge: TopoDS_Edge;
                           plane: Handle[GeomPlane]; automaticPos: bool;
                           isSetBndBox: bool; bndBox: BndBox; position: var Pnt;
                           firstAttach: var Pnt; secondAttach: var Pnt;
                           firstExtreme: var Pnt; secondExtreme: var Pnt;
                           symbolPrs: var DsgPrsArrowSide) {.cdecl,
    importcpp: "PrsDim_EqualDistanceRelation::ComputeTwoEdgesLength(@)",
    header: "PrsDim_EqualDistanceRelation.hxx".}
proc computeTwoVerticesLength*(aPresentation: Handle[Prs3dPresentation];
                              aDrawer: Handle[Prs3dDrawer]; arrowSize: cfloat;
                              firstVertex: TopoDS_Vertex;
                              secondVertex: TopoDS_Vertex;
                              plane: Handle[GeomPlane]; automaticPos: bool;
                              isSetBndBox: bool; bndBox: BndBox;
                              typeDist: PrsDimTypeOfDist; position: var Pnt;
                              firstAttach: var Pnt; secondAttach: var Pnt;
                              firstExtreme: var Pnt; secondExtreme: var Pnt;
                              symbolPrs: var DsgPrsArrowSide) {.cdecl,
    importcpp: "PrsDim_EqualDistanceRelation::ComputeTwoVerticesLength(@)",
    header: "PrsDim_EqualDistanceRelation.hxx".}
proc computeOneEdgeOneVertexLength*(aPresentation: Handle[Prs3dPresentation];
                                   aDrawer: Handle[Prs3dDrawer];
                                   arrowSize: cfloat; firstShape: TopoDS_Shape;
                                   secondShape: TopoDS_Shape;
                                   plane: Handle[GeomPlane]; automaticPos: bool;
                                   isSetBndBox: bool; bndBox: BndBox;
                                   position: var Pnt; firstAttach: var Pnt;
                                   secondAttach: var Pnt; firstExtreme: var Pnt;
                                   secondExtreme: var Pnt;
                                   symbolPrs: var DsgPrsArrowSide) {.cdecl, importcpp: "PrsDim_EqualDistanceRelation::ComputeOneEdgeOneVertexLength(@)",
    header: "PrsDim_EqualDistanceRelation.hxx".}