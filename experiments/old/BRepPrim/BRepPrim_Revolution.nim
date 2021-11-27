##  Created on: 1992-11-05
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Pnt2d"
type
  BRepPrimRevolution* {.importcpp: "BRepPrim_Revolution",
                       header: "BRepPrim_Revolution.hxx", bycopy.} = object of BRepPrimOneAxis ##
                                                                                        ## !
                                                                                        ## Create
                                                                                        ## a
                                                                                        ## revolution
                                                                                        ## body.
                                                                                        ## The
                                                                                        ## meridian
                                                                                        ## is
                                                                                        ## set
                                                                                        ##
                                                                                        ## !
                                                                                        ## later.
                                                                                        ## Reserved
                                                                                        ## for
                                                                                        ## derivated
                                                                                        ## classes.


proc `new`*(this: var BRepPrimRevolution; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Revolution::operator new",
    header: "BRepPrim_Revolution.hxx".}
proc `delete`*(this: var BRepPrimRevolution; theAddress: pointer) {.
    importcpp: "BRepPrim_Revolution::operator delete",
    header: "BRepPrim_Revolution.hxx".}
proc `new[]`*(this: var BRepPrimRevolution; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Revolution::operator new[]",
    header: "BRepPrim_Revolution.hxx".}
proc `delete[]`*(this: var BRepPrimRevolution; theAddress: pointer) {.
    importcpp: "BRepPrim_Revolution::operator delete[]",
    header: "BRepPrim_Revolution.hxx".}
proc `new`*(this: var BRepPrimRevolution; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Revolution::operator new",
    header: "BRepPrim_Revolution.hxx".}
proc `delete`*(this: var BRepPrimRevolution; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Revolution::operator delete",
    header: "BRepPrim_Revolution.hxx".}
proc constructBRepPrimRevolution*(a: Ax2; vMin: StandardReal; vMax: StandardReal;
                                 m: Handle[GeomCurve]; pm: Handle[Geom2dCurve]): BRepPrimRevolution {.
    constructor, importcpp: "BRepPrim_Revolution(@)",
    header: "BRepPrim_Revolution.hxx".}
proc makeEmptyLateralFace*(this: BRepPrimRevolution): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Revolution.hxx".}
proc makeEmptyMeridianEdge*(this: BRepPrimRevolution; ang: StandardReal): TopoDS_Edge {.
    noSideEffect, importcpp: "MakeEmptyMeridianEdge",
    header: "BRepPrim_Revolution.hxx".}
proc meridianValue*(this: BRepPrimRevolution; v: StandardReal): Pnt2d {.noSideEffect,
    importcpp: "MeridianValue", header: "BRepPrim_Revolution.hxx".}
proc setMeridianPCurve*(this: BRepPrimRevolution; e: var TopoDS_Edge; f: TopoDS_Face) {.
    noSideEffect, importcpp: "SetMeridianPCurve", header: "BRepPrim_Revolution.hxx".}