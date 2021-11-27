##  Created on: 1994-11-14
##  Created by: Bruno DUMORTIER
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

discard "forward decl of Standard_DomainError"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  BRepFillMultiLine* {.importcpp: "BRepFill_MultiLine",
                      header: "BRepFill_MultiLine.hxx", bycopy.} = object of AppContFunction


proc `new`*(this: var BRepFillMultiLine; theSize: csize_t): pointer {.
    importcpp: "BRepFill_MultiLine::operator new",
    header: "BRepFill_MultiLine.hxx".}
proc `delete`*(this: var BRepFillMultiLine; theAddress: pointer) {.
    importcpp: "BRepFill_MultiLine::operator delete",
    header: "BRepFill_MultiLine.hxx".}
proc `new[]`*(this: var BRepFillMultiLine; theSize: csize_t): pointer {.
    importcpp: "BRepFill_MultiLine::operator new[]",
    header: "BRepFill_MultiLine.hxx".}
proc `delete[]`*(this: var BRepFillMultiLine; theAddress: pointer) {.
    importcpp: "BRepFill_MultiLine::operator delete[]",
    header: "BRepFill_MultiLine.hxx".}
proc `new`*(this: var BRepFillMultiLine; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFill_MultiLine::operator new",
    header: "BRepFill_MultiLine.hxx".}
proc `delete`*(this: var BRepFillMultiLine; a2: pointer; a3: pointer) {.
    importcpp: "BRepFill_MultiLine::operator delete",
    header: "BRepFill_MultiLine.hxx".}
proc constructBRepFillMultiLine*(): BRepFillMultiLine {.constructor,
    importcpp: "BRepFill_MultiLine(@)", header: "BRepFill_MultiLine.hxx".}
proc constructBRepFillMultiLine*(face1: TopoDS_Face; face2: TopoDS_Face;
                                edge1: TopoDS_Edge; edge2: TopoDS_Edge;
                                inv1: StandardBoolean; inv2: StandardBoolean;
                                bissec: Handle[Geom2dCurve]): BRepFillMultiLine {.
    constructor, importcpp: "BRepFill_MultiLine(@)",
    header: "BRepFill_MultiLine.hxx".}
proc isParticularCase*(this: BRepFillMultiLine): StandardBoolean {.noSideEffect,
    importcpp: "IsParticularCase", header: "BRepFill_MultiLine.hxx".}
proc continuity*(this: BRepFillMultiLine): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BRepFill_MultiLine.hxx".}
proc curves*(this: BRepFillMultiLine; curve: var Handle[GeomCurve];
            pCurve1: var Handle[Geom2dCurve]; pCurve2: var Handle[Geom2dCurve]) {.
    noSideEffect, importcpp: "Curves", header: "BRepFill_MultiLine.hxx".}
proc firstParameter*(this: BRepFillMultiLine): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "BRepFill_MultiLine.hxx".}
proc lastParameter*(this: BRepFillMultiLine): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "BRepFill_MultiLine.hxx".}
proc value*(this: BRepFillMultiLine; u: StandardReal): Pnt {.noSideEffect,
    importcpp: "Value", header: "BRepFill_MultiLine.hxx".}
proc valueOnF1*(this: BRepFillMultiLine; u: StandardReal): Pnt2d {.noSideEffect,
    importcpp: "ValueOnF1", header: "BRepFill_MultiLine.hxx".}
proc valueOnF2*(this: BRepFillMultiLine; u: StandardReal): Pnt2d {.noSideEffect,
    importcpp: "ValueOnF2", header: "BRepFill_MultiLine.hxx".}
proc value3dOnF1OnF2*(this: BRepFillMultiLine; u: StandardReal; p3d: var Pnt;
                     pf1: var Pnt2d; pf2: var Pnt2d) {.noSideEffect,
    importcpp: "Value3dOnF1OnF2", header: "BRepFill_MultiLine.hxx".}
proc value*(this: BRepFillMultiLine; theU: StandardReal;
           thePnt2d: var NCollectionArray1[Pnt2d];
           thePnt: var NCollectionArray1[Pnt]): StandardBoolean {.noSideEffect,
    importcpp: "Value", header: "BRepFill_MultiLine.hxx".}
proc d1*(this: BRepFillMultiLine; theU: StandardReal;
        theVec2d: var NCollectionArray1[Vec2d]; theVec: var NCollectionArray1[Vec]): StandardBoolean {.
    noSideEffect, importcpp: "D1", header: "BRepFill_MultiLine.hxx".}