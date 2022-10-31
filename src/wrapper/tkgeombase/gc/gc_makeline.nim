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



proc line*(a1: Ax1Obj): MakeLine {.cdecl, constructor,
                                   importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc line*(L: LinObj): MakeLine {.cdecl, constructor, importcpp: "GC_MakeLine(@)",
                                  header: "GC_MakeLine.hxx".}
proc line*(p: PntObj; v: DirObj): MakeLine {.cdecl, constructor,
                                        importcpp: "GC_MakeLine(@)",
                                        header: "GC_MakeLine.hxx".}
proc line*(lin: LinObj; point: PntObj): MakeLine {.cdecl, constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc line*(p1: PntObj; p2: PntObj): MakeLine {.cdecl, constructor,
    importcpp: "GC_MakeLine(@)", header: "GC_MakeLine.hxx".}
proc value*(this: MakeLine): Handle[GeomLine] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeLine.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeLine): Handle[GeomLine] {.noSideEffect,
    cdecl, importcpp: "(Handle_Geom_TrimmedCurve)(#)", header: "GC_MakeLine.hxx".}


