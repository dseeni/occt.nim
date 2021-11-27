##  Created on: 1994-10-10
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRep_FFDumper"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRep_FacesIntersector"
discard "forward decl of TopOpeBRep_PointClassifier"
discard "forward decl of TopOpeBRep_LineInter"
discard "forward decl of TopOpeBRep_VPointInter"
discard "forward decl of TopOpeBRep_VPointInterClassifier"
discard "forward decl of TopOpeBRep_VPointInterIterator"
discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_Point"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of TopOpeBRepDS_DataStructure"
type
  TopOpeBRepFacesFiller* {.importcpp: "TopOpeBRep_FacesFiller",
                          header: "TopOpeBRep_FacesFiller.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepFacesFiller; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_FacesFiller::operator new",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc `delete`*(this: var TopOpeBRepFacesFiller; theAddress: pointer) {.
    importcpp: "TopOpeBRep_FacesFiller::operator delete",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc `new[]`*(this: var TopOpeBRepFacesFiller; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRep_FacesFiller::operator new[]",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc `delete[]`*(this: var TopOpeBRepFacesFiller; theAddress: pointer) {.
    importcpp: "TopOpeBRep_FacesFiller::operator delete[]",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc `new`*(this: var TopOpeBRepFacesFiller; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRep_FacesFiller::operator new",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc `delete`*(this: var TopOpeBRepFacesFiller; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRep_FacesFiller::operator delete",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc constructTopOpeBRepFacesFiller*(): TopOpeBRepFacesFiller {.constructor,
    importcpp: "TopOpeBRep_FacesFiller(@)", header: "TopOpeBRep_FacesFiller.hxx".}
proc insert*(this: var TopOpeBRepFacesFiller; f1: TopoDS_Shape; f2: TopoDS_Shape;
            facint: var TopOpeBRepFacesIntersector;
            hds: Handle[TopOpeBRepDS_HDataStructure]) {.importcpp: "Insert",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc processSectionEdges*(this: var TopOpeBRepFacesFiller) {.
    importcpp: "ProcessSectionEdges", header: "TopOpeBRep_FacesFiller.hxx".}
proc changePointClassifier*(this: var TopOpeBRepFacesFiller): var TopOpeBRepPointClassifier {.
    importcpp: "ChangePointClassifier", header: "TopOpeBRep_FacesFiller.hxx".}
proc pShapeClassifier*(this: TopOpeBRepFacesFiller): TopOpeBRepToolPShapeClassifier {.
    noSideEffect, importcpp: "PShapeClassifier",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc setPShapeClassifier*(this: var TopOpeBRepFacesFiller;
                         psc: TopOpeBRepToolPShapeClassifier) {.
    importcpp: "SetPShapeClassifier", header: "TopOpeBRep_FacesFiller.hxx".}
proc loadLine*(this: var TopOpeBRepFacesFiller; L: var TopOpeBRepLineInter) {.
    importcpp: "LoadLine", header: "TopOpeBRep_FacesFiller.hxx".}
proc checkLine*(this: TopOpeBRepFacesFiller; L: var TopOpeBRepLineInter): StandardBoolean {.
    noSideEffect, importcpp: "CheckLine", header: "TopOpeBRep_FacesFiller.hxx".}
proc vP_Position*(this: var TopOpeBRepFacesFiller;
                 facint: var TopOpeBRepFacesIntersector) {.
    importcpp: "VP_Position", header: "TopOpeBRep_FacesFiller.hxx".}
proc vP_Position*(this: var TopOpeBRepFacesFiller; L: var TopOpeBRepLineInter) {.
    importcpp: "VP_Position", header: "TopOpeBRep_FacesFiller.hxx".}
proc vP_PositionOnL*(this: var TopOpeBRepFacesFiller; L: var TopOpeBRepLineInter) {.
    importcpp: "VP_PositionOnL", header: "TopOpeBRep_FacesFiller.hxx".}
proc vP_PositionOnR*(this: var TopOpeBRepFacesFiller; L: var TopOpeBRepLineInter) {.
    importcpp: "VP_PositionOnR", header: "TopOpeBRep_FacesFiller.hxx".}
proc vP_Position*(this: var TopOpeBRepFacesFiller; vp: var TopOpeBRepVPointInter;
                 vpc: var TopOpeBRepVPointInterClassifier) {.
    importcpp: "VP_Position", header: "TopOpeBRep_FacesFiller.hxx".}
proc processLine*(this: var TopOpeBRepFacesFiller) {.importcpp: "ProcessLine",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc resetDSC*(this: var TopOpeBRepFacesFiller) {.importcpp: "ResetDSC",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc processRLine*(this: var TopOpeBRepFacesFiller) {.importcpp: "ProcessRLine",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc fillLineVPonR*(this: var TopOpeBRepFacesFiller) {.importcpp: "FillLineVPonR",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc fillLine*(this: var TopOpeBRepFacesFiller) {.importcpp: "FillLine",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc addShapesLine*(this: var TopOpeBRepFacesFiller) {.importcpp: "AddShapesLine",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc getESL*(this: var TopOpeBRepFacesFiller; les: var TopToolsListOfShape) {.
    importcpp: "GetESL", header: "TopOpeBRep_FacesFiller.hxx".}
proc processVPR*(this: var TopOpeBRepFacesFiller; ff: var TopOpeBRepFacesFiller;
                vp: TopOpeBRepVPointInter) {.importcpp: "ProcessVPR",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc processVPIonR*(this: var TopOpeBRepFacesFiller;
                   vpi: var TopOpeBRepVPointInterIterator;
                   trans1: TopOpeBRepDS_Transition; f1: TopoDS_Shape;
                   shapeIndex: int) {.importcpp: "ProcessVPIonR",
                                    header: "TopOpeBRep_FacesFiller.hxx".}
proc processVPonR*(this: var TopOpeBRepFacesFiller; vp: TopOpeBRepVPointInter;
                  trans1: TopOpeBRepDS_Transition; f1: TopoDS_Shape; shapeIndex: int) {.
    importcpp: "ProcessVPonR", header: "TopOpeBRep_FacesFiller.hxx".}
proc processVPonclosingR*(this: var TopOpeBRepFacesFiller;
                         vp: TopOpeBRepVPointInter; f1: TopoDS_Shape;
                         shapeIndex: int; transEdge: TopOpeBRepDS_Transition;
                         pVKind: TopOpeBRepDS_Kind; pVIndex: int;
                         ePIfound: StandardBoolean;
                         iepi: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "ProcessVPonclosingR", header: "TopOpeBRep_FacesFiller.hxx".}
proc processVPondgE*(this: var TopOpeBRepFacesFiller; vp: TopOpeBRepVPointInter;
                    shapeIndex: int; pVKind: var TopOpeBRepDS_Kind; pVIndex: var int;
                    ePIfound: var StandardBoolean;
                    iepi: var Handle[TopOpeBRepDS_Interference];
                    cPIfound: var StandardBoolean;
                    icpi: var Handle[TopOpeBRepDS_Interference]): StandardBoolean {.
    importcpp: "ProcessVPondgE", header: "TopOpeBRep_FacesFiller.hxx".}
proc processVPInotonR*(this: var TopOpeBRepFacesFiller;
                      vpi: var TopOpeBRepVPointInterIterator) {.
    importcpp: "ProcessVPInotonR", header: "TopOpeBRep_FacesFiller.hxx".}
proc processVPnotonR*(this: var TopOpeBRepFacesFiller; vp: TopOpeBRepVPointInter) {.
    importcpp: "ProcessVPnotonR", header: "TopOpeBRep_FacesFiller.hxx".}
proc getGeometry*(this: var TopOpeBRepFacesFiller;
                 it: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                 vp: TopOpeBRepVPointInter; g: var int; k: var TopOpeBRepDS_Kind): StandardBoolean {.
    importcpp: "GetGeometry", header: "TopOpeBRep_FacesFiller.hxx".}
proc makeGeometry*(this: var TopOpeBRepFacesFiller; vp: TopOpeBRepVPointInter;
                  shapeIndex: int; k: var TopOpeBRepDS_Kind): int {.
    importcpp: "MakeGeometry", header: "TopOpeBRep_FacesFiller.hxx".}
proc storeCurveInterference*(this: var TopOpeBRepFacesFiller;
                            i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "StoreCurveInterference", header: "TopOpeBRep_FacesFiller.hxx".}
proc getFFGeometry*(this: TopOpeBRepFacesFiller; dsp: TopOpeBRepDS_Point;
                   k: var TopOpeBRepDS_Kind; g: var int): StandardBoolean {.
    noSideEffect, importcpp: "GetFFGeometry", header: "TopOpeBRep_FacesFiller.hxx".}
proc getFFGeometry*(this: TopOpeBRepFacesFiller; vp: TopOpeBRepVPointInter;
                   k: var TopOpeBRepDS_Kind; g: var int): StandardBoolean {.
    noSideEffect, importcpp: "GetFFGeometry", header: "TopOpeBRep_FacesFiller.hxx".}
proc changeFacesIntersector*(this: var TopOpeBRepFacesFiller): var TopOpeBRepFacesIntersector {.
    importcpp: "ChangeFacesIntersector", header: "TopOpeBRep_FacesFiller.hxx".}
proc hDataStructure*(this: var TopOpeBRepFacesFiller): Handle[
    TopOpeBRepDS_HDataStructure] {.importcpp: "HDataStructure",
                                  header: "TopOpeBRep_FacesFiller.hxx".}
proc changeDataStructure*(this: var TopOpeBRepFacesFiller): var TopOpeBRepDS_DataStructure {.
    importcpp: "ChangeDataStructure", header: "TopOpeBRep_FacesFiller.hxx".}
proc face*(this: TopOpeBRepFacesFiller; i: int): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TopOpeBRep_FacesFiller.hxx".}
proc faceFaceTransition*(this: TopOpeBRepFacesFiller; L: TopOpeBRepLineInter; i: int): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "FaceFaceTransition",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc faceFaceTransition*(this: TopOpeBRepFacesFiller; i: int): TopOpeBRepDS_Transition {.
    noSideEffect, importcpp: "FaceFaceTransition",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc pFacesIntersectorDummy*(this: TopOpeBRepFacesFiller): TopOpeBRepPFacesIntersector {.
    noSideEffect, importcpp: "PFacesIntersectorDummy",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc pDataStructureDummy*(this: TopOpeBRepFacesFiller): TopOpeBRepDS_PDataStructure {.
    noSideEffect, importcpp: "PDataStructureDummy",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc pLineInterDummy*(this: TopOpeBRepFacesFiller): TopOpeBRepPLineInter {.
    noSideEffect, importcpp: "PLineInterDummy",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc setTraceIndex*(this: var TopOpeBRepFacesFiller; exF1: int; exF2: int) {.
    importcpp: "SetTraceIndex", header: "TopOpeBRep_FacesFiller.hxx".}
proc getTraceIndex*(this: TopOpeBRepFacesFiller; exF1: var int; exF2: var int) {.
    noSideEffect, importcpp: "GetTraceIndex", header: "TopOpeBRep_FacesFiller.hxx".}
proc lminmax*(L: TopOpeBRepLineInter; pmin: var StandardReal; pmax: var StandardReal) {.
    importcpp: "TopOpeBRep_FacesFiller::Lminmax(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc lSameDomainERL*(L: TopOpeBRepLineInter; erl: TopToolsListOfShape): StandardBoolean {.
    importcpp: "TopOpeBRep_FacesFiller::LSameDomainERL(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc isVPtransLok*(L: TopOpeBRepLineInter; iVP: int; si12: int;
                  t: var TopOpeBRepDS_Transition): StandardBoolean {.
    importcpp: "TopOpeBRep_FacesFiller::IsVPtransLok(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc transvpOK*(L: TopOpeBRepLineInter; iVP: int; si: int; isINOUT: StandardBoolean): StandardBoolean {.
    importcpp: "TopOpeBRep_FacesFiller::TransvpOK(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc vPParamOnER*(vp: TopOpeBRepVPointInter; lrest: TopOpeBRepLineInter): StandardReal {.
    importcpp: "TopOpeBRep_FacesFiller::VPParamOnER(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}
proc equalpPonR*(lrest: TopOpeBRepLineInter; vp1: TopOpeBRepVPointInter;
                vp2: TopOpeBRepVPointInter): StandardBoolean {.
    importcpp: "TopOpeBRep_FacesFiller::EqualpPonR(@)",
    header: "TopOpeBRep_FacesFiller.hxx".}