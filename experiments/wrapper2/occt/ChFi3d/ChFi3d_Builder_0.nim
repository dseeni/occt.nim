##  Created on: 1994-03-24
##  Created by: Isabelle GRIGNON
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

when defined(OCCT_DEBUG):
  var
    simul* {.importcpp: "simul", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
    elspine* {.importcpp: "elspine", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
    chemine* {.importcpp: "chemine", header: "ChFi3d_Builder_0.hxx".}: OSD_Chronometer
proc chFi3dInPeriod*(u: float; uFirst: float; uLast: float; eps: float): float {.
    importcpp: "ChFi3d_InPeriod(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoite*(p1: Pnt2d; p2: Pnt2d; mu: var float; mu: var float; mv: var float;
                 mv: var float) {.importcpp: "ChFi3d_Boite(@)",
                               header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoite*(p1: Pnt2d; p2: Pnt2d; p3: Pnt2d; p4: Pnt2d; du: var float; dv: var float;
                 mu: var float; mu: var float; mv: var float; mv: var float) {.
    importcpp: "ChFi3d_Boite(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSetPointTolerance*(dStr: var TopOpeBRepDS_DataStructure; box: BndBox;
                             ip: int) {.importcpp: "ChFi3d_SetPointTolerance(@)",
                                      header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(c: Handle[GeomCurve]; wd: float; wf: float; box1: var BndBox;
                      box2: var BndBox) {.importcpp: "ChFi3d_EnlargeBox(@)",
                                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(s: Handle[Adaptor3dHSurface]; pc: Handle[Geom2dCurve];
                      wd: float; wf: float; box1: var BndBox; box2: var BndBox) {.
    importcpp: "ChFi3d_EnlargeBox(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(e: TopoDS_Edge; lf: TopToolsListOfShape; w: float;
                      box: var BndBox) {.importcpp: "ChFi3d_EnlargeBox(@)",
                                      header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeBox*(dStr: var TopOpeBRepDS_DataStructure;
                      st: Handle[ChFiDS_Stripe]; sd: Handle[ChFiDS_SurfData];
                      b1: var BndBox; b2: var BndBox; isfirst: bool) {.
    importcpp: "ChFi3d_EnlargeBox(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEvalconti*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face): GeomAbsShape {.
    importcpp: "ChFi3d_evalconti(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dConexfaces*(e: TopoDS_Edge; f1: var TopoDS_Face; f2: var TopoDS_Face;
                      eFMap: ChFiDS_Map) {.importcpp: "ChFi3d_conexfaces(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeState*(e: ptr TopoDS_Edge; eFMap: ChFiDS_Map): ChFiDS_State {.
    importcpp: "ChFi3d_EdgeState(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dKParticular*(spine: Handle[ChFiDS_Spine]; ie: int; s1: BRepAdaptorSurface;
                       s2: BRepAdaptorSurface): bool {.
    importcpp: "ChFi3d_KParticular(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundFac*(s: var BRepAdaptorSurface; umin: float; umax: float; vmin: float;
                    vmax: float; checknaturalbounds: bool = true) {.
    importcpp: "ChFi3d_BoundFac(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundSrf*(s: var GeomAdaptorSurface; umin: float; umax: float; vmin: float;
                    vmax: float; checknaturalbounds: bool = true) {.
    importcpp: "ChFi3d_BoundSrf(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dInterPlaneEdge*(plan: Handle[Adaptor3dHSurface];
                          c: Handle[Adaptor3dHCurve]; w: var float; sens: bool;
                          tolc: float): bool {.
    importcpp: "ChFi3d_InterPlaneEdge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dExtrSpineCarac*(dStr: TopOpeBRepDS_DataStructure;
                          cd: Handle[ChFiDS_Stripe]; i: int; p: float; jf: int;
                          sens: int; p: var Pnt; v: var Vec; r: var float) {.
    importcpp: "ChFi3d_ExtrSpineCarac(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCircularSpine*(wFirst: var float; wLast: var float; pdeb: Pnt; vdeb: Vec;
                         pfin: Pnt; vfin: Vec; rad: float): Handle[GeomCircle] {.
    importcpp: "ChFi3d_CircularSpine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSpine*(pd: Pnt; vd: var Vec; pf: Pnt; vf: var Vec; r: float): Handle[
    GeomBezierCurve] {.importcpp: "ChFi3d_Spine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(fac: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   sens1: int; pfac1: Pnt2d; vfac1: Vec2d; sens2: int; pfac2: Pnt2d;
                   vfac2: Vec2d; t3d: float; ta: float): Handle[GeomFillBoundary] {.
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(surf: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   sens1: int; p1: Pnt2d; v1: var Vec; sens2: int; p2: Pnt2d; v2: var Vec;
                   t3d: float; ta: float): Handle[GeomFillBoundary] {.
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(s: Handle[GeomSurface]; p1: Pnt2d; p2: Pnt2d; t3d: float; ta: float;
                   isfreeboundary: bool = false): Handle[GeomFillBoundary] {.
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(hs: Handle[Adaptor3dHSurface]; p1: Pnt2d; p2: Pnt2d; t3d: float;
                   ta: float; isfreeboundary: bool = false): Handle[GeomFillBoundary] {.
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(hs: Handle[Adaptor3dHSurface]; curv: Handle[Geom2dCurve];
                   t3d: float; ta: float; isfreeboundary: bool = false): Handle[
    GeomFillBoundary] {.importcpp: "ChFi3d_mkbound(@)",
                       header: "ChFi3d_Builder_0.hxx".}
proc chFi3dMkbound*(fac: Handle[Adaptor3dHSurface]; curv: var Handle[Geom2dCurve];
                   p1: Pnt2d; p2: Pnt2d; t3d: float; ta: float;
                   isfreeboundary: bool = false): Handle[GeomFillBoundary] {.
    importcpp: "ChFi3d_mkbound(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCoefficient*(v3d: Vec; d1u: Vec; d1v: Vec; du: var float; dv: var float) {.
    importcpp: "ChFi3d_Coefficient(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(p1: Pnt2d; d1: var Dir2d; p2: Pnt2d; d2: var Dir2d;
                       redresse: bool = true): Handle[Geom2dCurve] {.
    importcpp: "ChFi3d_BuildPCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(surf: Handle[Adaptor3dHSurface]; p1: Pnt2d; v1: Vec; p2: Pnt2d;
                       v2: Vec; redresse: bool = false): Handle[Geom2dCurve] {.
    importcpp: "ChFi3d_BuildPCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBuildPCurve*(surf: Handle[Adaptor3dHSurface]; p1: Pnt2d; v1: Vec2d;
                       p2: Pnt2d; v2: Vec2d; redresse: bool = false): Handle[Geom2dCurve] {.
    importcpp: "ChFi3d_BuildPCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCheckSameParameter*(c3d: Handle[Adaptor3dHCurve];
                              pcurv: var Handle[Geom2dCurve];
                              s: Handle[Adaptor3dHSurface]; tol3d: float;
                              tolreached: var float): bool {.
    importcpp: "ChFi3d_CheckSameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSameParameter*(c3d: Handle[Adaptor3dHCurve];
                         pcurv: var Handle[Geom2dCurve];
                         s: Handle[Adaptor3dHSurface]; tol3d: float;
                         tolreached: var float): bool {.
    importcpp: "ChFi3d_SameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSameParameter*(c3d: Handle[GeomCurve]; pcurv: var Handle[Geom2dCurve];
                         s: Handle[GeomSurface]; pardeb: float; parfin: float;
                         tol3d: float; tolreached: var float): bool {.
    importcpp: "ChFi3d_SameParameter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(c3d: Handle[GeomCurve]; uv1: Pnt2d; uv2: Pnt2d;
                        pcurv: var Handle[Geom2dCurve]; s: Handle[GeomSurface];
                        pardeb: float; parfin: float; tol3d: float;
                        tolreached: var float; reverse: bool = false) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(c3d: Handle[Adaptor3dHCurve]; uv1: Pnt2d; uv2: Pnt2d;
                        pcurv: var Handle[Geom2dCurve];
                        s: Handle[Adaptor3dHSurface]; pardeb: float; parfin: float;
                        tol3d: float; tolreached: var float; reverse: bool = false) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputePCurv*(uv1: Pnt2d; uv2: Pnt2d; pcurv: var Handle[Geom2dCurve];
                        pardeb: float; parfin: float; reverse: bool = false) {.
    importcpp: "ChFi3d_ComputePCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIntTraces*(fd1: Handle[ChFiDS_SurfData]; pref1: float; p1: var float;
                     jf1: int; sens1: int; fd2: Handle[ChFiDS_SurfData]; pref2: float;
                     p2: var float; jf2: int; sens2: int; refP2d: Pnt2d;
                     check2dDistance: bool = false; enlarge: bool = false): bool {.
    importcpp: "ChFi3d_IntTraces(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsInFront*(dStr: var TopOpeBRepDS_DataStructure;
                     cd1: Handle[ChFiDS_Stripe]; cd2: Handle[ChFiDS_Stripe];
                     i1: int; i2: int; sens1: int; sens2: int; p1: var float;
                     p2: var float; face: var TopoDS_Face; sameside: var bool;
                     jf1: var int; jf2: var int; visavis: var bool; vtx: TopoDS_Vertex;
                     check2dDistance: bool = false; enlarge: bool = false): bool {.
    importcpp: "ChFi3d_IsInFront(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dProjectPCurv*(hCg: Handle[Adaptor3dHCurve];
                        hSg: Handle[Adaptor3dHSurface];
                        pcurv: var Handle[Geom2dCurve]; tol3d: float;
                        tolreached: var float) {.
    importcpp: "ChFi3d_ProjectPCurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dReparamPcurv*(uf: float; ul: float; pcurv: var Handle[Geom2dCurve]) {.
    importcpp: "ChFi3d_ReparamPcurv(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputeArete*(p1: ChFiDS_CommonPoint; uv1: Pnt2d; p2: ChFiDS_CommonPoint;
                        uv2: Pnt2d; surf: Handle[GeomSurface];
                        c3d: var Handle[GeomCurve]; pcurv: var Handle[Geom2dCurve];
                        pardeb: var float; parfin: var float; tol3d: float;
                        tol2d: float; tolreached: var float; iFlag: int) {.
    importcpp: "ChFi3d_ComputeArete(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilCurveInDS*(icurv: int; isurf: int; pcurv: Handle[Geom2dCurve];
                        et: TopAbsOrientation): Handle[
    TopOpeBRepDS_SurfaceCurveInterference] {.importcpp: "ChFi3d_FilCurveInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dTrsfTrans*(t1: IntSurfTypeTrans): TopAbsOrientation {.
    importcpp: "ChFi3d_TrsfTrans(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilCommonPoint*(sp: BRepBlendExtremity; transLine: IntSurfTypeTrans;
                          start: bool; cp: var ChFiDS_CommonPoint; tol: float) {.
    importcpp: "ChFi3d_FilCommonPoint(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSolidIndex*(sp: Handle[ChFiDS_Spine];
                      dStr: var TopOpeBRepDS_DataStructure; mapESo: var ChFiDS_Map;
                      mapESh: var ChFiDS_Map): int {.
    importcpp: "ChFi3d_SolidIndex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIndexPointInDS*(p1: ChFiDS_CommonPoint;
                          dStr: var TopOpeBRepDS_DataStructure): int {.
    importcpp: "ChFi3d_IndexPointInDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilPointInDS*(et: TopAbsOrientation; ic: int; ip: int; par: float;
                        isVertex: bool = false): Handle[
    TopOpeBRepDS_CurvePointInterference] {.importcpp: "ChFi3d_FilPointInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilVertexInDS*(et: TopAbsOrientation; ic: int; ip: int; par: float): Handle[
    TopOpeBRepDS_CurvePointInterference] {.importcpp: "ChFi3d_FilVertexInDS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dFilDS*(solidIndex: int; corDat: Handle[ChFiDS_Stripe];
                 dStr: var TopOpeBRepDS_DataStructure;
                 reglist: var ChFiDS_Regularities; tol3d: float; tol2d: float) {.
    importcpp: "ChFi3d_FilDS(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dStripeEdgeInter*(theStripe1: Handle[ChFiDS_Stripe];
                           theStripe2: Handle[ChFiDS_Stripe];
                           dStr: var TopOpeBRepDS_DataStructure; tol2d: float) {.
    importcpp: "ChFi3d_StripeEdgeInter(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIndexOfSurfData*(v1: TopoDS_Vertex; cd: Handle[ChFiDS_Stripe];
                           sens: var int): int {.
    importcpp: "ChFi3d_IndexOfSurfData(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeFromV1*(v1: TopoDS_Vertex; cd: Handle[ChFiDS_Stripe]; sens: var int): TopoDS_Edge {.
    importcpp: "ChFi3d_EdgeFromV1(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dConvTol2dToTol3d*(s: Handle[Adaptor3dHSurface]; tol2d: float): float {.
    importcpp: "ChFi3d_ConvTol2dToTol3d(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputeCurves*(s1: Handle[Adaptor3dHSurface];
                         s2: Handle[Adaptor3dHSurface];
                         pardeb: TColStdArray1OfReal; parfin: TColStdArray1OfReal;
                         c3d: var Handle[GeomCurve]; pc1: var Handle[Geom2dCurve];
                         pc2: var Handle[Geom2dCurve]; tol3d: float; tol2d: float;
                         tolreached: var float; wholeCurv: bool = true): bool {.
    importcpp: "ChFi3d_ComputeCurves(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIntCS*(s: Handle[Adaptor3dHSurface]; c: Handle[Adaptor3dHCurve];
                 p2dS: var Pnt2d; wc: var float): bool {.importcpp: "ChFi3d_IntCS(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputesIntPC*(fi1: ChFiDS_FaceInterference;
                         fi2: ChFiDS_FaceInterference;
                         hs1: Handle[GeomAdaptorHSurface];
                         hs2: Handle[GeomAdaptorHSurface]; uInt1: var float;
                         uInt2: var float) {.importcpp: "ChFi3d_ComputesIntPC(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dComputesIntPC*(fi1: ChFiDS_FaceInterference;
                         fi2: ChFiDS_FaceInterference;
                         hs1: Handle[GeomAdaptorHSurface];
                         hs2: Handle[GeomAdaptorHSurface]; uInt1: var float;
                         uInt2: var float; p: var Pnt) {.
    importcpp: "ChFi3d_ComputesIntPC(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dBoundSurf*(dStr: var TopOpeBRepDS_DataStructure;
                     fd1: Handle[ChFiDS_SurfData]; iFaCo1: int; iFaArc1: int): Handle[
    GeomAdaptorHSurface] {.importcpp: "ChFi3d_BoundSurf(@)",
                          header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSearchPivot*(s: ptr int; u: array[3, array[3, float]]; t: float): int {.
    importcpp: "ChFi3d_SearchPivot(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dSearchFD*(dStr: var TopOpeBRepDS_DataStructure;
                    cd1: Handle[ChFiDS_Stripe]; cd2: Handle[ChFiDS_Stripe];
                    sens1: int; sens2: int; i1: var int; i2: var int; p1: var float;
                    p2: var float; ind1: int; ind2: int; face: var TopoDS_Face;
                    sameside: var bool; jf1: var int; jf2: var int): bool {.
    importcpp: "ChFi3d_SearchFD(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dParameters*(s: Handle[GeomSurface]; p3d: Pnt; u: var float; v: var float) {.
    importcpp: "ChFi3d_Parameters(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dTrimCurve*(gc: Handle[GeomCurve]; firstP: Pnt; lastP: Pnt;
                     gtc: var Handle[GeomTrimmedCurve]) {.
    importcpp: "ChFi3d_TrimCurve(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dPerformElSpine*(hes: var Handle[ChFiDS_HElSpine];
                          spine: var Handle[ChFiDS_Spine];
                          continuity: GeomAbsShape; tol: float;
                          isOffset: bool = false) {.
    importcpp: "ChFi3d_PerformElSpine(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEnlargeFace*(spine: Handle[ChFiDS_Spine];
                       hs: Handle[BRepAdaptorHSurface]; tol: float): TopoDS_Face {.
    importcpp: "ChFi3d_EnlargeFace(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheFace1*(map: TopToolsListOfShape; f1: TopoDS_Face;
                        f: var TopoDS_Face) {.importcpp: "ChFi3d_cherche_face1(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheElement*(v: TopoDS_Vertex; e1: TopoDS_Edge; f1: TopoDS_Face;
                          e: var TopoDS_Edge; vtx: var TopoDS_Vertex) {.
    importcpp: "ChFi3d_cherche_element(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEvalTolReached*(s1: Handle[Adaptor3dHSurface]; pc1: Handle[Geom2dCurve];
                          s2: Handle[Adaptor3dHSurface]; pc2: Handle[Geom2dCurve];
                          c: Handle[GeomCurve]): float {.
    importcpp: "ChFi3d_EvalTolReached(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheEdge*(v: TopoDS_Vertex; e1: TopToolsArray1OfShape; f1: TopoDS_Face;
                       e: var TopoDS_Edge; vtx: var TopoDS_Vertex) {.
    importcpp: "ChFi3d_cherche_edge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNbface*(mapVF: TopToolsListOfShape): int {.importcpp: "ChFi3d_nbface(@)",
    header: "ChFi3d_Builder_0.hxx".}
proc chFi3dEdgeCommonFaces*(mapEF: TopToolsListOfShape; f1: var TopoDS_Face;
                           f2: var TopoDS_Face) {.
    importcpp: "ChFi3d_edge_common_faces(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dAngleEdge*(vtx: TopoDS_Vertex; e1: TopoDS_Edge; e2: TopoDS_Edge): float {.
    importcpp: "ChFi3d_AngleEdge(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheBordsLibres*(myVEMap: ChFiDS_Map; v1: TopoDS_Vertex;
                              bordlibre: var bool; edgelibre1: var TopoDS_Edge;
                              edgelibre2: var TopoDS_Edge) {.
    importcpp: "ChFi3d_ChercheBordsLibres(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNbNotDegeneratedEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map): int {.
    importcpp: "ChFi3d_NbNotDegeneratedEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNumberOfEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map): int {.
    importcpp: "ChFi3d_NumberOfEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dNumberOfSharpEdges*(vtx: TopoDS_Vertex; vEMap: ChFiDS_Map;
                              eFmap: ChFiDS_Map): int {.
    importcpp: "ChFi3d_NumberOfSharpEdges(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dChercheVertex*(e1: TopoDS_Edge; e2: TopoDS_Edge;
                         vertex: var TopoDS_Vertex; trouve: var bool) {.
    importcpp: "ChFi3d_cherche_vertex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCouture*(f: TopoDS_Face; couture: var bool; edgecouture: var TopoDS_Edge) {.
    importcpp: "ChFi3d_Couture(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dCoutureOnVertex*(f: TopoDS_Face; v: TopoDS_Vertex; couture: var bool;
                           edgecouture: var TopoDS_Edge) {.
    importcpp: "ChFi3d_CoutureOnVertex(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsPseudoSeam*(e: TopoDS_Edge; f: TopoDS_Face): bool {.
    importcpp: "ChFi3d_IsPseudoSeam(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dApproxByC2*(c: Handle[GeomCurve]): Handle[GeomBSplineCurve] {.
    importcpp: "ChFi3d_ApproxByC2(@)", header: "ChFi3d_Builder_0.hxx".}
proc chFi3dIsSmooth*(c: Handle[GeomCurve]): bool {.importcpp: "ChFi3d_IsSmooth(@)",
    header: "ChFi3d_Builder_0.hxx".}
