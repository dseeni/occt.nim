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

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_CCLocFOfLocECC2d"
type
  ExtremaLocECC2d* {.importcpp: "Extrema_LocECC2d", header: "Extrema_LocECC2d.hxx",
                    bycopy.} = object ## ! Calculates the distance with a close point. The
                                   ## ! close point is defined by a parameter value on each
                                   ## ! curve.
                                   ## ! The function F(u,v)=distance(C1(u),C2(v)) has an
                                   ## ! extremun when gradient(f)=0. The algorithm searchs
                                   ## ! the zero near the close point.


proc newExtremaLocECC2d*(c1: Adaptor2dCurve2d; c2: Adaptor2dCurve2d; u0: cfloat;
                        v0: cfloat; tolU: cfloat; tolV: cfloat): ExtremaLocECC2d {.
    cdecl, constructor, importcpp: "Extrema_LocECC2d(@)", header: "Extrema_LocECC2d.hxx".}
proc isDone*(this: ExtremaLocECC2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "Extrema_LocECC2d.hxx".}
proc squareDistance*(this: ExtremaLocECC2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocECC2d.hxx".}
proc point*(this: ExtremaLocECC2d; p1: var ExtremaPOnCurv2d; p2: var ExtremaPOnCurv2d) {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_LocECC2d.hxx".}