import ../../tkmath/gp/gp_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import extrema_types





##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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



proc newExtremaExtPC*(): ExtremaExtPC {.cdecl, constructor,
                                     importcpp: "Extrema_ExtPC(@)",
                                     header: "Extrema_ExtPC.hxx".}
proc newExtremaExtPC*(p: PntObj; c: Adaptor3dCurve; uinf: cfloat; usup: cfloat;
                     tolF: cfloat = 1.0e-10): ExtremaExtPC {.cdecl, constructor,
    importcpp: "Extrema_ExtPC(@)", header: "Extrema_ExtPC.hxx".}
proc newExtremaExtPC*(p: PntObj; c: Adaptor3dCurve; tolF: cfloat = 1.0e-10): ExtremaExtPC {.
    cdecl, constructor, importcpp: "Extrema_ExtPC(@)", header: "Extrema_ExtPC.hxx".}
proc initialize*(this: var ExtremaExtPC; c: Adaptor3dCurve; uinf: cfloat; usup: cfloat;
                tolF: cfloat = 1.0e-10) {.cdecl, importcpp: "Initialize",
                                      header: "Extrema_ExtPC.hxx".}
proc perform*(this: var ExtremaExtPC; p: PntObj) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtPC.hxx".}
proc isDone*(this: ExtremaExtPC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                     header: "Extrema_ExtPC.hxx".}
proc squareDistance*(this: ExtremaExtPC; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPC.hxx".}
proc nbExt*(this: ExtremaExtPC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                    header: "Extrema_ExtPC.hxx".}
proc isMin*(this: ExtremaExtPC; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_ExtPC.hxx".}
proc point*(this: ExtremaExtPC; n: cint): ExtremaPOnCurv {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPC.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtPC; dist1: var cfloat; dist2: var cfloat;
                            p1: var PntObj; p2: var PntObj) {.noSideEffect, cdecl,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPC.hxx".}


