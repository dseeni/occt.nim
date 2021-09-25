##  Created on: 1993-06-16
##  Created by: Jean Yves LEBEY
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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TCollection_AsciiString"
type
  TopOpeBRepBuildWireEdgeSet* {.importcpp: "TopOpeBRepBuild_WireEdgeSet",
                               header: "TopOpeBRepBuild_WireEdgeSet.hxx", bycopy.} = object of TopOpeBRepBuildShapeSet ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## WireEdgeSet
                                                                                                                ## to
                                                                                                                ## build
                                                                                                                ## edges
                                                                                                                ## connected
                                                                                                                ## by
                                                                                                                ## vertices
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## on
                                                                                                                ## face
                                                                                                                ## F.
                                                                                                                ## Edges
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## WireEdgeSet
                                                                                                                ## must
                                                                                                                ## have
                                                                                                                ## a
                                                                                                                ## representation
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## on
                                                                                                                ## surface
                                                                                                                ## of
                                                                                                                ## face
                                                                                                                ## F.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Indicates
                                                                                                                ## whether
                                                                                                                ## vertex
                                                                                                                ## V
                                                                                                                ## is
                                                                                                                ## a
                                                                                                                ## good
                                                                                                                ## connexity
                                                                                                                ## vertex
                                                                                                                ## between
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## edges
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## i.e,
                                                                                                                ## returns
                                                                                                                ## True
                                                                                                                ## if
                                                                                                                ## V
                                                                                                                ## is
                                                                                                                ## shared
                                                                                                                ## by
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2
                                                                                                                ## and
                                                                                                                ## if
                                                                                                                ## V
                                                                                                                ## has
                                                                                                                ## different
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## orientations
                                                                                                                ## on
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## If
                                                                                                                ## V
                                                                                                                ## is
                                                                                                                ## shared
                                                                                                                ## by
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2,
                                                                                                                ## returns
                                                                                                                ## the
                                                                                                                ## orientation
                                                                                                                ## of
                                                                                                                ## V
                                                                                                                ## on
                                                                                                                ## E1
                                                                                                                ## and
                                                                                                                ## E2


proc constructTopOpeBRepBuildWireEdgeSet*(f: TopoDS_Shape;
    `addr`: StandardAddress = nil): TopOpeBRepBuildWireEdgeSet {.constructor,
    importcpp: "TopOpeBRepBuild_WireEdgeSet(@)",
    header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc face*(this: TopOpeBRepBuildWireEdgeSet): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc addShape*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.
    importcpp: "AddShape", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc addStartElement*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.
    importcpp: "AddStartElement", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc addElement*(this: var TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape) {.
    importcpp: "AddElement", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc initNeighbours*(this: var TopOpeBRepBuildWireEdgeSet; e: TopoDS_Shape) {.
    importcpp: "InitNeighbours", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc findNeighbours*(this: var TopOpeBRepBuildWireEdgeSet) {.
    importcpp: "FindNeighbours", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc makeNeighboursList*(this: var TopOpeBRepBuildWireEdgeSet; e: TopoDS_Shape;
                        v: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "MakeNeighboursList", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc isUVISO*(e: TopoDS_Edge; f: TopoDS_Face; uiso: var bool; viso: var bool) {.
    importcpp: "TopOpeBRepBuild_WireEdgeSet::IsUVISO(@)",
    header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc dumpSS*(this: var TopOpeBRepBuildWireEdgeSet) {.importcpp: "DumpSS",
    header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc sName*(this: TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape;
           sb: TCollectionAsciiString = ""; sa: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, importcpp: "SName", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc sName*(this: TopOpeBRepBuildWireEdgeSet; s: TopToolsListOfShape;
           sb: TCollectionAsciiString = ""; sa: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, importcpp: "SName", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc sNameori*(this: TopOpeBRepBuildWireEdgeSet; s: TopoDS_Shape;
              sb: TCollectionAsciiString = ""; sa: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, importcpp: "SNameori", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
proc sNameori*(this: TopOpeBRepBuildWireEdgeSet; s: TopToolsListOfShape;
              sb: TCollectionAsciiString = ""; sa: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, importcpp: "SNameori", header: "TopOpeBRepBuild_WireEdgeSet.hxx".}
