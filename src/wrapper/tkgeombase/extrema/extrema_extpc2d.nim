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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_ExtPElC2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of Extrema_EPCOfExtPC2d"
discard "forward decl of Extrema_PCFOfEPCOfExtPC2d"
type
  ExtremaExtPC2d* {.importcpp: "Extrema_ExtPC2d", header: "Extrema_ExtPC2d.hxx",
                   bycopy.} = object


proc newExtremaExtPC2d*(): ExtremaExtPC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc newExtremaExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; uinf: cfloat; usup: cfloat;
                       tolF: cfloat = 1.0e-10): ExtremaExtPC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc newExtremaExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; tolF: cfloat = 1.0e-10): ExtremaExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtPC2d(@)", header: "Extrema_ExtPC2d.hxx".}
proc initialize*(this: var ExtremaExtPC2d; c: Adaptor2dCurve2d; uinf: cfloat;
                usup: cfloat; tolF: cfloat = 1.0e-10) {.cdecl, importcpp: "Initialize",
    header: "Extrema_ExtPC2d.hxx".}
proc perform*(this: var ExtremaExtPC2d; p: Pnt2d) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtPC2d.hxx".}
proc isDone*(this: ExtremaExtPC2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "Extrema_ExtPC2d.hxx".}
proc squareDistance*(this: ExtremaExtPC2d; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPC2d.hxx".}
proc nbExt*(this: ExtremaExtPC2d): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      header: "Extrema_ExtPC2d.hxx".}
proc isMin*(this: ExtremaExtPC2d; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_ExtPC2d.hxx".}
proc point*(this: ExtremaExtPC2d; n: cint): ExtremaPOnCurv2d {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPC2d.hxx".}
proc trimmedSquareDistances*(this: ExtremaExtPC2d; dist1: var cfloat;
                            dist2: var cfloat; p1: var Pnt2d; p2: var Pnt2d) {.
    noSideEffect, cdecl, importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPC2d.hxx".}