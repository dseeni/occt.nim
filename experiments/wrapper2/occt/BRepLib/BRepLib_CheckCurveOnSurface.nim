##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Computes the max distance between edge and its
## ! 2d representation on the face.

type
  BRepLibCheckCurveOnSurface* {.importcpp: "BRepLib_CheckCurveOnSurface",
                               header: "BRepLib_CheckCurveOnSurface.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Default
                                                                                       ## contructor
                                                                                       ##
                                                                                       ## !
                                                                                       ## Computes
                                                                                       ## the
                                                                                       ## max
                                                                                       ## distance
                                                                                       ## for
                                                                                       ## the
                                                                                       ## 3d
                                                                                       ## curve
                                                                                       ## of
                                                                                       ## <myCOnSurfGeom>
                                                                                       ##
                                                                                       ## !
                                                                                       ## and
                                                                                       ## 2d
                                                                                       ## curve
                                                                                       ## <thePCurve>
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## isTheMultyTheadDisabled
                                                                                       ## ==
                                                                                       ## TRUE
                                                                                       ## then
                                                                                       ## computation
                                                                                       ## will
                                                                                       ## be
                                                                                       ## made
                                                                                       ##
                                                                                       ## !
                                                                                       ## without
                                                                                       ## any
                                                                                       ## parallelization.


proc constructBRepLibCheckCurveOnSurface*(): BRepLibCheckCurveOnSurface {.
    constructor, importcpp: "BRepLib_CheckCurveOnSurface(@)",
    header: "BRepLib_CheckCurveOnSurface.hxx".}
proc constructBRepLibCheckCurveOnSurface*(theEdge: TopoDS_Edge;
    theFace: TopoDS_Face): BRepLibCheckCurveOnSurface {.constructor,
    importcpp: "BRepLib_CheckCurveOnSurface(@)",
    header: "BRepLib_CheckCurveOnSurface.hxx".}
proc init*(this: var BRepLibCheckCurveOnSurface; theEdge: TopoDS_Edge;
          theFace: TopoDS_Face) {.importcpp: "Init",
                                header: "BRepLib_CheckCurveOnSurface.hxx".}
proc perform*(this: var BRepLibCheckCurveOnSurface;
             isTheMultyTheradDisabled: bool = false) {.importcpp: "Perform",
    header: "BRepLib_CheckCurveOnSurface.hxx".}
proc curve*(this: BRepLibCheckCurveOnSurface): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc pCurve*(this: BRepLibCheckCurveOnSurface): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc pCurve2*(this: BRepLibCheckCurveOnSurface): Handle[Geom2dCurve] {.noSideEffect,
    importcpp: "PCurve2", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc surface*(this: BRepLibCheckCurveOnSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc range*(this: var BRepLibCheckCurveOnSurface; theFirst: var float;
           theLast: var float) {.importcpp: "Range",
                              header: "BRepLib_CheckCurveOnSurface.hxx".}
proc isDone*(this: BRepLibCheckCurveOnSurface): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc errorStatus*(this: BRepLibCheckCurveOnSurface): int {.noSideEffect,
    importcpp: "ErrorStatus", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc maxDistance*(this: BRepLibCheckCurveOnSurface): float {.noSideEffect,
    importcpp: "MaxDistance", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc maxParameter*(this: BRepLibCheckCurveOnSurface): float {.noSideEffect,
    importcpp: "MaxParameter", header: "BRepLib_CheckCurveOnSurface.hxx".}
