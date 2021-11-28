##  Created on: 2011-11-24
##  Created by: ANNA MASALSKAYA
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

type
  VectorOfPoint* = NCollectionVector[Xyz]

## =======================================================================
## ! Class BRepBuilderAPI_VertexInspector
## !   derived from NCollection_CellFilter_InspectorXYZ
## !   This class define the Inspector interface for CellFilter algorithm,
## !   working with gp_XYZ points in 3d space.
## !   Used in search of coincidence points with a certain tolerance.
## =======================================================================

type
  BRepBuilderAPI_VertexInspector* {.importcpp: "BRepBuilderAPI_VertexInspector", header: "BRepBuilderAPI_VertexInspector.hxx",
                                   bycopy.} = object of NCollectionCellFilterInspectorXYZ

  BRepBuilderAPI_VertexInspectorTarget* = cint

proc newBRepBuilderAPI_VertexInspector*(theTol: cfloat): BRepBuilderAPI_VertexInspector {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_VertexInspector(@)",
    dynlib: tktopalgo.}
proc add*(this: var BRepBuilderAPI_VertexInspector; thePnt: Xyz) {.cdecl,
    importcpp: "Add", dynlib: tktopalgo.}
proc clearResList*(this: var BRepBuilderAPI_VertexInspector) {.cdecl,
    importcpp: "ClearResList", dynlib: tktopalgo.}
proc setCurrent*(this: var BRepBuilderAPI_VertexInspector; theCurPnt: Xyz) {.cdecl,
    importcpp: "SetCurrent", dynlib: tktopalgo.}
proc resInd*(this: var BRepBuilderAPI_VertexInspector): TColStdListOfInteger {.cdecl,
    importcpp: "ResInd", dynlib: tktopalgo.}
proc inspect*(this: var BRepBuilderAPI_VertexInspector; theTarget: cint): NCollectionCellFilterAction {.
    cdecl, importcpp: "Inspect", dynlib: tktopalgo.}