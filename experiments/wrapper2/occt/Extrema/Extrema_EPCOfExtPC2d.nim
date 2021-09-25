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
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_PCFOfEPCOfExtPC2d"
type
  ExtremaEPCOfExtPC2d* {.importcpp: "Extrema_EPCOfExtPC2d",
                        header: "Extrema_EPCOfExtPC2d.hxx", bycopy.} = object


proc constructExtremaEPCOfExtPC2d*(): ExtremaEPCOfExtPC2d {.constructor,
    importcpp: "Extrema_EPCOfExtPC2d(@)", header: "Extrema_EPCOfExtPC2d.hxx".}
proc constructExtremaEPCOfExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; nbU: int;
                                  tolU: float; tolF: float): ExtremaEPCOfExtPC2d {.
    constructor, importcpp: "Extrema_EPCOfExtPC2d(@)",
    header: "Extrema_EPCOfExtPC2d.hxx".}
proc constructExtremaEPCOfExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; nbU: int;
                                  umin: float; usup: float; tolU: float; tolF: float): ExtremaEPCOfExtPC2d {.
    constructor, importcpp: "Extrema_EPCOfExtPC2d(@)",
    header: "Extrema_EPCOfExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfExtPC2d; c: Adaptor2dCurve2d; nbU: int;
                tolU: float; tolF: float) {.importcpp: "Initialize",
                                        header: "Extrema_EPCOfExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfExtPC2d; c: Adaptor2dCurve2d; nbU: int;
                umin: float; usup: float; tolU: float; tolF: float) {.
    importcpp: "Initialize", header: "Extrema_EPCOfExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfExtPC2d; c: Adaptor2dCurve2d) {.
    importcpp: "Initialize", header: "Extrema_EPCOfExtPC2d.hxx".}
proc initialize*(this: var ExtremaEPCOfExtPC2d; nbU: int; umin: float; usup: float;
                tolU: float; tolF: float) {.importcpp: "Initialize",
                                        header: "Extrema_EPCOfExtPC2d.hxx".}
proc perform*(this: var ExtremaEPCOfExtPC2d; p: Pnt2d) {.importcpp: "Perform",
    header: "Extrema_EPCOfExtPC2d.hxx".}
proc isDone*(this: ExtremaEPCOfExtPC2d): bool {.noSideEffect, importcpp: "IsDone",
    header: "Extrema_EPCOfExtPC2d.hxx".}
proc nbExt*(this: ExtremaEPCOfExtPC2d): int {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_EPCOfExtPC2d.hxx".}
proc squareDistance*(this: ExtremaEPCOfExtPC2d; n: int): float {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_EPCOfExtPC2d.hxx".}
proc isMin*(this: ExtremaEPCOfExtPC2d; n: int): bool {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_EPCOfExtPC2d.hxx".}
proc point*(this: ExtremaEPCOfExtPC2d; n: int): ExtremaPOnCurv2d {.noSideEffect,
    importcpp: "Point", header: "Extrema_EPCOfExtPC2d.hxx".}
