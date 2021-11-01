##  Created on: 1994-06-17
##  Created by: Modeling
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Law_Function"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of Geom_Surface"
type
  BRepFilletAPI_MakeFillet* {.importcpp: "BRepFilletAPI_MakeFillet",
                             header: "BRepFilletAPI_MakeFillet.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## the
                                                                                                                ## computation
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## fillets.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## <FShape>
                                                                                                                ## sets
                                                                                                                ## the
                                                                                                                ## type
                                                                                                                ## of
                                                                                                                ## fillet
                                                                                                                ## surface.
                                                                                                                ## The
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## default
                                                                                                                ## value
                                                                                                                ## is
                                                                                                                ## ChFi3d_Rational
                                                                                                                ## (classical
                                                                                                                ## nurbs
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles).
                                                                                                                ## ChFi3d_QuasiAngular
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## corresponds
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## nurbs
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## which
                                                                                                                ## parameterisation
                                                                                                                ## matches
                                                                                                                ## the
                                                                                                                ## circle
                                                                                                                ## one.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## ChFi3d_Polynomial
                                                                                                                ## corresponds
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## polynomial
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles.


proc newBRepFilletAPI_MakeFillet*(s: TopoDS_Shape;
                                 fShape: ChFi3dFilletShape = chFi3dRational): BRepFilletAPI_MakeFillet {.
    cdecl, constructor, importcpp: "BRepFilletAPI_MakeFillet(@)", dynlib: tkfillet.}
proc setParams*(this: var BRepFilletAPI_MakeFillet; tang: cfloat; tesp: cfloat;
               t2d: cfloat; tApp3d: cfloat; tolApp2d: cfloat; fleche: cfloat) {.cdecl,
    importcpp: "SetParams", dynlib: tkfillet.}
proc setContinuity*(this: var BRepFilletAPI_MakeFillet;
                   internalContinuity: GeomAbsShape; angularTolerance: cfloat) {.
    cdecl, importcpp: "SetContinuity", dynlib: tkfillet.}
proc add*(this: var BRepFilletAPI_MakeFillet; e: TopoDS_Edge) {.cdecl,
    importcpp: "Add", dynlib: tkfillet.}
proc add*(this: var BRepFilletAPI_MakeFillet; radius: cfloat; e: TopoDS_Edge) {.cdecl,
    importcpp: "Add", dynlib: tkfillet.}
proc add*(this: var BRepFilletAPI_MakeFillet; r1: cfloat; r2: cfloat; e: TopoDS_Edge) {.
    cdecl, importcpp: "Add", dynlib: tkfillet.}
proc add*(this: var BRepFilletAPI_MakeFillet; L: Handle[LawFunction]; e: TopoDS_Edge) {.
    cdecl, importcpp: "Add", dynlib: tkfillet.}
proc add*(this: var BRepFilletAPI_MakeFillet; uandR: TColgpArray1OfPnt2d;
         e: TopoDS_Edge) {.cdecl, importcpp: "Add", dynlib: tkfillet.}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: cfloat; ic: cint; iinC: cint) {.
    cdecl, importcpp: "SetRadius", dynlib: tkfillet.}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; r1: cfloat; r2: cfloat; ic: cint;
               iinC: cint) {.cdecl, importcpp: "SetRadius", dynlib: tkfillet.}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; L: Handle[LawFunction]; ic: cint;
               iinC: cint) {.cdecl, importcpp: "SetRadius", dynlib: tkfillet.}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; uandR: TColgpArray1OfPnt2d;
               ic: cint; iinC: cint) {.cdecl, importcpp: "SetRadius", dynlib: tkfillet.}
proc resetContour*(this: var BRepFilletAPI_MakeFillet; ic: cint) {.cdecl,
    importcpp: "ResetContour", dynlib: tkfillet.}
proc isConstant*(this: var BRepFilletAPI_MakeFillet; ic: cint): bool {.cdecl,
    importcpp: "IsConstant", dynlib: tkfillet.}
proc radius*(this: var BRepFilletAPI_MakeFillet; ic: cint): cfloat {.cdecl,
    importcpp: "Radius", dynlib: tkfillet.}
proc isConstant*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge): bool {.
    cdecl, importcpp: "IsConstant", dynlib: tkfillet.}
proc radius*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge): cfloat {.
    cdecl, importcpp: "Radius", dynlib: tkfillet.}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: cfloat; ic: cint;
               e: TopoDS_Edge) {.cdecl, importcpp: "SetRadius", dynlib: tkfillet.}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: cfloat; ic: cint;
               v: TopoDS_Vertex) {.cdecl, importcpp: "SetRadius", dynlib: tkfillet.}
proc getBounds*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge;
               f: var cfloat; L: var cfloat): bool {.cdecl, importcpp: "GetBounds",
    dynlib: tkfillet.}
proc getLaw*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge): Handle[
    LawFunction] {.cdecl, importcpp: "GetLaw", dynlib: tkfillet.}
proc setLaw*(this: var BRepFilletAPI_MakeFillet; ic: cint; e: TopoDS_Edge;
            L: Handle[LawFunction]) {.cdecl, importcpp: "SetLaw", dynlib: tkfillet.}
proc setFilletShape*(this: var BRepFilletAPI_MakeFillet; fShape: ChFi3dFilletShape) {.
    cdecl, importcpp: "SetFilletShape", dynlib: tkfillet.}
proc getFilletShape*(this: BRepFilletAPI_MakeFillet): ChFi3dFilletShape {.
    noSideEffect, cdecl, importcpp: "GetFilletShape", dynlib: tkfillet.}
proc nbContours*(this: BRepFilletAPI_MakeFillet): cint {.noSideEffect, cdecl,
    importcpp: "NbContours", dynlib: tkfillet.}
proc contour*(this: BRepFilletAPI_MakeFillet; e: TopoDS_Edge): cint {.noSideEffect,
    cdecl, importcpp: "Contour", dynlib: tkfillet.}
proc nbEdges*(this: BRepFilletAPI_MakeFillet; i: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbEdges", dynlib: tkfillet.}
proc edge*(this: BRepFilletAPI_MakeFillet; i: cint; j: cint): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "Edge", dynlib: tkfillet.}
proc remove*(this: var BRepFilletAPI_MakeFillet; e: TopoDS_Edge) {.cdecl,
    importcpp: "Remove", dynlib: tkfillet.}
proc length*(this: BRepFilletAPI_MakeFillet; ic: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkfillet.}
proc firstVertex*(this: BRepFilletAPI_MakeFillet; ic: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "FirstVertex", dynlib: tkfillet.}
proc lastVertex*(this: BRepFilletAPI_MakeFillet; ic: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "LastVertex", dynlib: tkfillet.}
proc abscissa*(this: BRepFilletAPI_MakeFillet; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "Abscissa", dynlib: tkfillet.}
proc relativeAbscissa*(this: BRepFilletAPI_MakeFillet; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "RelativeAbscissa", dynlib: tkfillet.}
proc closedAndTangent*(this: BRepFilletAPI_MakeFillet; ic: cint): bool {.noSideEffect,
    cdecl, importcpp: "ClosedAndTangent", dynlib: tkfillet.}
proc closed*(this: BRepFilletAPI_MakeFillet; ic: cint): bool {.noSideEffect, cdecl,
    importcpp: "Closed", dynlib: tkfillet.}
proc build*(this: var BRepFilletAPI_MakeFillet) {.cdecl, importcpp: "Build",
    dynlib: tkfillet.}
proc reset*(this: var BRepFilletAPI_MakeFillet) {.cdecl, importcpp: "Reset",
    dynlib: tkfillet.}
proc builder*(this: BRepFilletAPI_MakeFillet): Handle[TopOpeBRepBuildHBuilder] {.
    noSideEffect, cdecl, importcpp: "Builder", dynlib: tkfillet.}
proc generated*(this: var BRepFilletAPI_MakeFillet; eorV: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", dynlib: tkfillet.}
proc modified*(this: var BRepFilletAPI_MakeFillet; f: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", dynlib: tkfillet.}
proc isDeleted*(this: var BRepFilletAPI_MakeFillet; f: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", dynlib: tkfillet.}
proc nbSurfaces*(this: BRepFilletAPI_MakeFillet): cint {.noSideEffect, cdecl,
    importcpp: "NbSurfaces", dynlib: tkfillet.}
proc newFaces*(this: var BRepFilletAPI_MakeFillet; i: cint): TopToolsListOfShape {.
    cdecl, importcpp: "NewFaces", dynlib: tkfillet.}
proc simulate*(this: var BRepFilletAPI_MakeFillet; ic: cint) {.cdecl,
    importcpp: "Simulate", dynlib: tkfillet.}
proc nbSurf*(this: BRepFilletAPI_MakeFillet; ic: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbSurf", dynlib: tkfillet.}
proc sect*(this: BRepFilletAPI_MakeFillet; ic: cint; `is`: cint): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, cdecl, importcpp: "Sect", dynlib: tkfillet.}
proc nbFaultyContours*(this: BRepFilletAPI_MakeFillet): cint {.noSideEffect, cdecl,
    importcpp: "NbFaultyContours", dynlib: tkfillet.}
proc faultyContour*(this: BRepFilletAPI_MakeFillet; i: cint): cint {.noSideEffect,
    cdecl, importcpp: "FaultyContour", dynlib: tkfillet.}
proc nbComputedSurfaces*(this: BRepFilletAPI_MakeFillet; ic: cint): cint {.
    noSideEffect, cdecl, importcpp: "NbComputedSurfaces", dynlib: tkfillet.}
proc computedSurface*(this: BRepFilletAPI_MakeFillet; ic: cint; `is`: cint): Handle[
    GeomSurface] {.noSideEffect, cdecl, importcpp: "ComputedSurface",
                  dynlib: tkfillet.}
proc nbFaultyVertices*(this: BRepFilletAPI_MakeFillet): cint {.noSideEffect, cdecl,
    importcpp: "NbFaultyVertices", dynlib: tkfillet.}
proc faultyVertex*(this: BRepFilletAPI_MakeFillet; iv: cint): TopoDS_Vertex {.
    noSideEffect, cdecl, importcpp: "FaultyVertex", dynlib: tkfillet.}
proc hasResult*(this: BRepFilletAPI_MakeFillet): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", dynlib: tkfillet.}
proc badShape*(this: BRepFilletAPI_MakeFillet): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "BadShape", dynlib: tkfillet.}
proc stripeStatus*(this: BRepFilletAPI_MakeFillet; ic: cint): ChFiDS_ErrorStatus {.
    noSideEffect, cdecl, importcpp: "StripeStatus", dynlib: tkfillet.}