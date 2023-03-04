import extrema_types
import ../tkmath/gp/gp_types
##  Created on: 1994-01-04
##  Created by: Christophe MARION
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

discard "forward decl of Lin2dObj"
discard "forward decl of Circ2dObj"
discard "forward decl of Elips2dObj"
discard "forward decl of Hypr2dObj"
discard "forward decl of Parab2dObj"

proc newExtrema_ExtElC2d*(): Extrema_ExtElC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Lin2dObj; C2: Lin2dObj; AngTol: cfloat): Extrema_ExtElC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtElC2d(@)",
    header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Lin2dObj; C2: Circ2dObj; Tol: cfloat): Extrema_ExtElC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtElC2d(@)",
    header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Lin2dObj; C2: Elips2dObj): Extrema_ExtElC2d {.cdecl,
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Lin2dObj; C2: Hypr2dObj): Extrema_ExtElC2d {.cdecl,
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Lin2dObj; C2: Parab2dObj): Extrema_ExtElC2d {.cdecl,
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Circ2dObj; C2: Circ2dObj): Extrema_ExtElC2d {.cdecl,
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Circ2dObj; C2: Elips2dObj): Extrema_ExtElC2d {.cdecl,
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Circ2dObj; C2: Hypr2dObj): Extrema_ExtElC2d {.cdecl,
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc newExtrema_ExtElC2d*(C1: Circ2dObj; C2: Parab2dObj): Extrema_ExtElC2d {.cdecl,
    constructor, importcpp: "Extrema_ExtElC2d(@)", header: "Extrema_ExtElC2d.hxx".}
proc IsDone*(this: Extrema_ExtElC2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "Extrema_ExtElC2d.hxx".}
proc IsParallel*(this: Extrema_ExtElC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtElC2d.hxx".}
proc NbExt*(this: Extrema_ExtElC2d): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        header: "Extrema_ExtElC2d.hxx".}
proc SquareDistance*(this: Extrema_ExtElC2d; N: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtElC2d.hxx".}
proc Points*(this: Extrema_ExtElC2d; N: cint; P1: var Extrema_POnCurv2d;
            P2: var Extrema_POnCurv2d) {.noSideEffect, cdecl, importcpp: "Points",
                                      header: "Extrema_ExtElC2d.hxx".}