import gc_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/geom/geom_types





##  Created on: 1992-09-28
##  Created by: Remi GILET
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



proc plane*(pl: PlnObj): MakePlane {.cdecl, constructor,
                                     importcpp: "GC_MakePlane(@)",
                                     header: "GC_MakePlane.hxx".}
proc plane*(p: PntObj; v: DirObj): MakePlane {.cdecl, constructor,
    importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc plane*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): MakePlane {.cdecl,
    constructor, importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc plane*(pln: PlnObj; point: PntObj): MakePlane {.cdecl, constructor,
    importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc plane*(pln: PlnObj; dist: cfloat): MakePlane {.cdecl, constructor,
    importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc plane*(p1: PntObj; p2: PntObj; p3: PntObj): MakePlane {.cdecl, constructor,
    importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc plane*(axis: Ax1Obj): MakePlane {.cdecl, constructor,
                                       importcpp: "GC_MakePlane(@)",
                                       header: "GC_MakePlane.hxx".}
proc value*(this: MakePlane): Handle[GeomPlane] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakePlane.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakePlane): Handle[GeomPlane] {.noSideEffect,
    cdecl, importcpp: "(Handle_Geom_TrimmedCurve)(#)", header: "GC_MakePlane.hxx".}


