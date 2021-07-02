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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of Extrema_POnCurv"
type
  ExtremaExtPElC* {.importcpp: "Extrema_ExtPElC", header: "Extrema_ExtPElC.hxx",
                   bycopy.} = object


proc constructExtremaExtPElC*(): ExtremaExtPElC {.constructor,
    importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc constructExtremaExtPElC*(p: GpPnt; c: GpLin; tol: StandardReal;
                             uinf: StandardReal; usup: StandardReal): ExtremaExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: GpPnt; c: GpLin; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc constructExtremaExtPElC*(p: GpPnt; c: GpCirc; tol: StandardReal;
                             uinf: StandardReal; usup: StandardReal): ExtremaExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: GpPnt; c: GpCirc; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc constructExtremaExtPElC*(p: GpPnt; c: GpElips; tol: StandardReal;
                             uinf: StandardReal; usup: StandardReal): ExtremaExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: GpPnt; c: GpElips; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc constructExtremaExtPElC*(p: GpPnt; c: GpHypr; tol: StandardReal;
                             uinf: StandardReal; usup: StandardReal): ExtremaExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: GpPnt; c: GpHypr; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc constructExtremaExtPElC*(p: GpPnt; c: GpParab; tol: StandardReal;
                             uinf: StandardReal; usup: StandardReal): ExtremaExtPElC {.
    constructor, importcpp: "Extrema_ExtPElC(@)", header: "Extrema_ExtPElC.hxx".}
proc perform*(this: var ExtremaExtPElC; p: GpPnt; c: GpParab; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC.hxx".}
proc isDone*(this: ExtremaExtPElC): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPElC.hxx".}
proc nbExt*(this: ExtremaExtPElC): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPElC.hxx".}
proc squareDistance*(this: ExtremaExtPElC; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPElC.hxx".}
proc isMin*(this: ExtremaExtPElC; n: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_ExtPElC.hxx".}
proc point*(this: ExtremaExtPElC; n: StandardInteger): ExtremaPOnCurv {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPElC.hxx".}

