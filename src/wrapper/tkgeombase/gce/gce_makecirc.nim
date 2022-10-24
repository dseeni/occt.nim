import gce_types

##  Created on: 1992-08-26
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax1"


proc newGceMakeCirc*(a2: Ax2Obj; radius: cfloat): GceMakeCirc {.cdecl, constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc newGceMakeCirc*(circ: CircObj; dist: cfloat): GceMakeCirc {.cdecl, constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc newGceMakeCirc*(circ: CircObj; point: PntObj): GceMakeCirc {.cdecl, constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc newGceMakeCirc*(p1: PntObj; p2: PntObj; p3: PntObj): GceMakeCirc {.cdecl, constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc newGceMakeCirc*(center: PntObj; norm: DirObj; radius: cfloat): GceMakeCirc {.cdecl,
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc newGceMakeCirc*(center: PntObj; plane: PlnObj; radius: cfloat): GceMakeCirc {.cdecl,
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc newGceMakeCirc*(center: PntObj; ptaxis: PntObj; radius: cfloat): GceMakeCirc {.cdecl,
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc newGceMakeCirc*(axis: Ax1Obj; radius: cfloat): GceMakeCirc {.cdecl, constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc value*(this: GceMakeCirc): CircObj {.noSideEffect, cdecl, importcpp: "Value",
                                   header: "gce_MakeCirc.hxx".}
proc operator*(this: GceMakeCirc): CircObj {.noSideEffect, cdecl, importcpp: "Operator",
                                      header: "gce_MakeCirc.hxx".}
converter `circ`*(this: GceMakeCirc): CircObj {.noSideEffect, cdecl,
    importcpp: "gce_MakeCirc::operator gp_Circ", header: "gce_MakeCirc.hxx".}
