##  Created on: 1993-11-09
##  Created by: Laurent BOURESCHE
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

discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of ChFi3d_Builder"
discard "forward decl of ChFi3d_ChBuilder"
discard "forward decl of ChFi3d_FilBuilder"
discard "forward decl of ChFi3d_SearchSing"
type
  ChFi3d* {.importcpp: "ChFi3d", header: "ChFi3d.hxx", bycopy.} = object


proc `new`*(this: var ChFi3d; theSize: csize_t): pointer {.
    importcpp: "ChFi3d::operator new", header: "ChFi3d.hxx".}
proc `delete`*(this: var ChFi3d; theAddress: pointer) {.
    importcpp: "ChFi3d::operator delete", header: "ChFi3d.hxx".}
proc `new[]`*(this: var ChFi3d; theSize: csize_t): pointer {.
    importcpp: "ChFi3d::operator new[]", header: "ChFi3d.hxx".}
proc `delete[]`*(this: var ChFi3d; theAddress: pointer) {.
    importcpp: "ChFi3d::operator delete[]", header: "ChFi3d.hxx".}
proc `new`*(this: var ChFi3d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "ChFi3d::operator new", header: "ChFi3d.hxx".}
proc `delete`*(this: var ChFi3d; a2: pointer; a3: pointer) {.
    importcpp: "ChFi3d::operator delete", header: "ChFi3d.hxx".}
#[ proc defineConnectType*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face;
                       sinTol: StandardReal; correctPoint: StandardBoolean): ChFiDS_TypeOfConcavity {.
    importcpp: "ChFi3d::DefineConnectType(@)", header: "ChFi3d.hxx".} ]#
#[ proc isTangentFaces*(theEdge: TopoDS_Edge; theFace1: TopoDS_Face;
                    theFace2: TopoDS_Face; order: GeomAbsShape = geomAbsG1): StandardBoolean {.
    importcpp: "ChFi3d::IsTangentFaces(@)", header: "ChFi3d.hxx".}
proc concaveSide*(s1: BRepAdaptorSurface; s2: BRepAdaptorSurface; e: TopoDS_Edge;
                 or1: var TopAbsOrientation; or2: var TopAbsOrientation): int {.
    importcpp: "ChFi3d::ConcaveSide(@)", header: "ChFi3d.hxx".}
proc nextSide*(or1: var TopAbsOrientation; or2: var TopAbsOrientation;
              orSave1: TopAbsOrientation; orSave2: TopAbsOrientation; choixSauv: int): int {.
    importcpp: "ChFi3d::NextSide(@)", header: "ChFi3d.hxx".}
proc nextSide*(`or`: var TopAbsOrientation; orSave: TopAbsOrientation;
              orFace: TopAbsOrientation) {.importcpp: "ChFi3d::NextSide(@)",
    header: "ChFi3d.hxx".}
proc sameSide*(`or`: TopAbsOrientation; orSave1: TopAbsOrientation;
              orSave2: TopAbsOrientation; orFace1: TopAbsOrientation;
              orFace2: TopAbsOrientation): StandardBoolean {.
    importcpp: "ChFi3d::SameSide(@)", header: "ChFi3d.hxx".} ]#