import extrema_types
import ../tkmath/gp/gp_types

##  Created on: 1991-02-21
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

discard "forward decl of LinObj"
discard "forward decl of CircObj"
discard "forward decl of ElipsObj"
discard "forward decl of HyprObj"
discard "forward decl of ParabObj"


proc newExtrema_ExtElC*(): Extrema_ExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtrema_ExtElC*(C1: LinObj; C2: LinObj; AngTol: cfloat): Extrema_ExtElC {.cdecl,
    constructor, importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtrema_ExtElC*(C1: LinObj; C2: CircObj; Tol: cfloat): Extrema_ExtElC {.cdecl,
    constructor, importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtrema_ExtElC*(C1: LinObj; C2: ElipsObj): Extrema_ExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtrema_ExtElC*(C1: LinObj; C2: HyprObj): Extrema_ExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtrema_ExtElC*(C1: LinObj; C2: ParabObj): Extrema_ExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc newExtrema_ExtElC*(C1: CircObj; C2: CircObj): Extrema_ExtElC {.cdecl, constructor,
    importcpp: "Extrema_ExtElC(@)", header: "Extrema_ExtElC.hxx".}
proc IsDone*(this: Extrema_ExtElC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "Extrema_ExtElC.hxx".}
proc IsParallel*(this: Extrema_ExtElC): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtElC.hxx".}
proc NbExt*(this: Extrema_ExtElC): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                      header: "Extrema_ExtElC.hxx".}
proc SquareDistance*(this: Extrema_ExtElC; N: cint = 1): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtElC.hxx".}
proc Points*(this: Extrema_ExtElC; N: cint; P1: var Extrema_POnCurv;
            P2: var Extrema_POnCurv) {.noSideEffect, cdecl, importcpp: "Points",
                                    header: "Extrema_ExtElC.hxx".}