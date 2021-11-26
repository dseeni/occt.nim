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
discard "forward decl of Extrema_PCFOfEPCOfELPCOfLocateExtPC2d"
type
  ExtremaEPCOfELPCOfLocateExtPC2d* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d", header: "Extrema_EPCOfELPCOfLocateExtPC2d.hxx",
                                    bycopy.} = object


proc newExtremaEPCOfELPCOfLocateExtPC2d*(): ExtremaEPCOfELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    dynlib: tkgeombase.}
proc newExtremaEPCOfELPCOfLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; nbU: cint;
                                        tolU: cfloat; tolF: cfloat): ExtremaEPCOfELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    dynlib: tkgeombase.}
proc newExtremaEPCOfELPCOfLocateExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d; nbU: cint;
                                        umin: cfloat; usup: cfloat; tolU: cfloat;
                                        tolF: cfloat): ExtremaEPCOfELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC2d(@)",
    dynlib: tkgeombase.}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d;
                nbU: cint; tolU: cfloat; tolF: cfloat) {.cdecl,
    importcpp: "Initialize", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d;
                nbU: cint; umin: cfloat; usup: cfloat; tolU: cfloat; tolF: cfloat) {.
    cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; c: Adaptor2dCurve2d) {.
    cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; nbU: cint; umin: cfloat;
                usup: cfloat; tolU: cfloat; tolF: cfloat) {.cdecl,
    importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaEPCOfELPCOfLocateExtPC2d; p: Pnt2d) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaEPCOfELPCOfLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkgeombase.}
proc nbExt*(this: ExtremaEPCOfELPCOfLocateExtPC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance", dynlib: tkgeombase.}
proc isMin*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsMin", dynlib: tkgeombase.}
proc point*(this: ExtremaEPCOfELPCOfLocateExtPC2d; n: cint): ExtremaPOnCurv2d {.
    noSideEffect, cdecl, importcpp: "Point", dynlib: tkgeombase.}