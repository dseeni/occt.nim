##  Created on: 1994-07-06
##  Created by: Laurent PAINNOT
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
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_POnCurv"
type
  ExtremaLocateExtCC* {.importcpp: "Extrema_LocateExtCC",
                       header: "Extrema_LocateExtCC.hxx", bycopy.} = object ## !
                                                                       ## Calculates the distance with a close point. The
                                                                       ## ! close point is defined by a parameter value on each
                                                                       ## ! curve.
                                                                       ## ! The function
                                                                       ## F(u,v)=distance(C1(u),C2(v)) has an
                                                                       ## ! extremun when
                                                                       ## gradient(f)=0. The algorithm searchs
                                                                       ## ! the zero near the close point.


proc newExtremaLocateExtCC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve; u0: cfloat;
                           v0: cfloat): ExtremaLocateExtCC {.cdecl, constructor,
    importcpp: "Extrema_LocateExtCC(@)", header: "Extrema_LocateExtCC.hxx".}
proc isDone*(this: ExtremaLocateExtCC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_LocateExtCC.hxx".}
proc squareDistance*(this: ExtremaLocateExtCC): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocateExtCC.hxx".}
proc point*(this: ExtremaLocateExtCC; p1: var ExtremaPOnCurv; p2: var ExtremaPOnCurv) {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_LocateExtCC.hxx".}