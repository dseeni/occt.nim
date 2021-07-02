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
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_PCFOfEPCOfExtPC"
type
  ExtremaEPCOfExtPC* {.importcpp: "Extrema_EPCOfExtPC",
                      header: "Extrema_EPCOfExtPC.hxx", bycopy.} = object


proc constructExtremaEPCOfExtPC*(): ExtremaEPCOfExtPC {.constructor,
    importcpp: "Extrema_EPCOfExtPC(@)", header: "Extrema_EPCOfExtPC.hxx".}
proc constructExtremaEPCOfExtPC*(p: GpPnt; c: Adaptor3dCurve; nbU: StandardInteger;
                                tolU: StandardReal; tolF: StandardReal): ExtremaEPCOfExtPC {.
    constructor, importcpp: "Extrema_EPCOfExtPC(@)",
    header: "Extrema_EPCOfExtPC.hxx".}
proc constructExtremaEPCOfExtPC*(p: GpPnt; c: Adaptor3dCurve; nbU: StandardInteger;
                                umin: StandardReal; usup: StandardReal;
                                tolU: StandardReal; tolF: StandardReal): ExtremaEPCOfExtPC {.
    constructor, importcpp: "Extrema_EPCOfExtPC(@)",
    header: "Extrema_EPCOfExtPC.hxx".}
proc initialize*(this: var ExtremaEPCOfExtPC; c: Adaptor3dCurve; nbU: StandardInteger;
                tolU: StandardReal; tolF: StandardReal) {.importcpp: "Initialize",
    header: "Extrema_EPCOfExtPC.hxx".}
proc initialize*(this: var ExtremaEPCOfExtPC; c: Adaptor3dCurve; nbU: StandardInteger;
                umin: StandardReal; usup: StandardReal; tolU: StandardReal;
                tolF: StandardReal) {.importcpp: "Initialize",
                                    header: "Extrema_EPCOfExtPC.hxx".}
proc initialize*(this: var ExtremaEPCOfExtPC; c: Adaptor3dCurve) {.
    importcpp: "Initialize", header: "Extrema_EPCOfExtPC.hxx".}
proc initialize*(this: var ExtremaEPCOfExtPC; nbU: StandardInteger;
                umin: StandardReal; usup: StandardReal; tolU: StandardReal;
                tolF: StandardReal) {.importcpp: "Initialize",
                                    header: "Extrema_EPCOfExtPC.hxx".}
proc perform*(this: var ExtremaEPCOfExtPC; p: GpPnt) {.importcpp: "Perform",
    header: "Extrema_EPCOfExtPC.hxx".}
proc isDone*(this: ExtremaEPCOfExtPC): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_EPCOfExtPC.hxx".}
proc nbExt*(this: ExtremaEPCOfExtPC): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_EPCOfExtPC.hxx".}
proc squareDistance*(this: ExtremaEPCOfExtPC; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_EPCOfExtPC.hxx".}
proc isMin*(this: ExtremaEPCOfExtPC; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_EPCOfExtPC.hxx".}
proc point*(this: ExtremaEPCOfExtPC; n: StandardInteger): ExtremaPOnCurv {.
    noSideEffect, importcpp: "Point", header: "Extrema_EPCOfExtPC.hxx".}

