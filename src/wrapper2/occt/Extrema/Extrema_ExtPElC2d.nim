##  Created on: 1993-12-13
##  Created by: Christophe MARION
##  Copyright (c) 1993-1999 Matra Datavision
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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of Extrema_POnCurv2d"
type
  ExtremaExtPElC2d* {.importcpp: "Extrema_ExtPElC2d",
                     header: "Extrema_ExtPElC2d.hxx", bycopy.} = object


proc constructExtremaExtPElC2d*(): ExtremaExtPElC2d {.constructor,
    importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc constructExtremaExtPElC2d*(p: GpPnt2d; c: GpLin2d; tol: StandardReal;
                               uinf: StandardReal; usup: StandardReal): ExtremaExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc perform*(this: var ExtremaExtPElC2d; p: GpPnt2d; L: GpLin2d; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC2d.hxx".}
proc constructExtremaExtPElC2d*(p: GpPnt2d; c: GpCirc2d; tol: StandardReal;
                               uinf: StandardReal; usup: StandardReal): ExtremaExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc perform*(this: var ExtremaExtPElC2d; p: GpPnt2d; c: GpCirc2d; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC2d.hxx".}
proc constructExtremaExtPElC2d*(p: GpPnt2d; c: GpElips2d; tol: StandardReal;
                               uinf: StandardReal; usup: StandardReal): ExtremaExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc perform*(this: var ExtremaExtPElC2d; p: GpPnt2d; c: GpElips2d; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC2d.hxx".}
proc constructExtremaExtPElC2d*(p: GpPnt2d; c: GpHypr2d; tol: StandardReal;
                               uinf: StandardReal; usup: StandardReal): ExtremaExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc perform*(this: var ExtremaExtPElC2d; p: GpPnt2d; c: GpHypr2d; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC2d.hxx".}
proc constructExtremaExtPElC2d*(p: GpPnt2d; c: GpParab2d; tol: StandardReal;
                               uinf: StandardReal; usup: StandardReal): ExtremaExtPElC2d {.
    constructor, importcpp: "Extrema_ExtPElC2d(@)", header: "Extrema_ExtPElC2d.hxx".}
proc perform*(this: var ExtremaExtPElC2d; p: GpPnt2d; c: GpParab2d; tol: StandardReal;
             uinf: StandardReal; usup: StandardReal) {.importcpp: "Perform",
    header: "Extrema_ExtPElC2d.hxx".}
proc isDone*(this: ExtremaExtPElC2d): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPElC2d.hxx".}
proc nbExt*(this: ExtremaExtPElC2d): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPElC2d.hxx".}
proc squareDistance*(this: ExtremaExtPElC2d; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPElC2d.hxx".}
proc isMin*(this: ExtremaExtPElC2d; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_ExtPElC2d.hxx".}
proc point*(this: ExtremaExtPElC2d; n: StandardInteger): ExtremaPOnCurv2d {.
    noSideEffect, importcpp: "Point", header: "Extrema_ExtPElC2d.hxx".}

