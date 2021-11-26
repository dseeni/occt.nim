##  Created on: 1995-07-18
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of Extrema_POnSurfParams"
type
  ExtremaGenExtPS* {.importcpp: "Extrema_GenExtPS", header: "Extrema_GenExtPS.hxx",
                    bycopy.} = object


proc newExtremaGenExtPS*(): ExtremaGenExtPS {.cdecl, constructor,
    importcpp: "Extrema_GenExtPS(@)", dynlib: tkgeombase.}
proc newExtremaGenExtPS*(p: Pnt; s: Adaptor3dSurface; nbU: cint; nbV: cint; tolU: cfloat;
                        tolV: cfloat; f: ExtremaExtFlag = extremaExtFlagMINMAX;
                        a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaGenExtPS {.
    cdecl, constructor, importcpp: "Extrema_GenExtPS(@)", dynlib: tkgeombase.}
proc newExtremaGenExtPS*(p: Pnt; s: Adaptor3dSurface; nbU: cint; nbV: cint; umin: cfloat;
                        usup: cfloat; vmin: cfloat; vsup: cfloat; tolU: cfloat;
                        tolV: cfloat; f: ExtremaExtFlag = extremaExtFlagMINMAX;
                        a: ExtremaExtAlgo = extremaExtAlgoGrad): ExtremaGenExtPS {.
    cdecl, constructor, importcpp: "Extrema_GenExtPS(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaGenExtPS; s: Adaptor3dSurface; nbU: cint; nbV: cint;
                tolU: cfloat; tolV: cfloat) {.cdecl, importcpp: "Initialize",
    dynlib: tkgeombase.}
proc initialize*(this: var ExtremaGenExtPS; s: Adaptor3dSurface; nbU: cint; nbV: cint;
                umin: cfloat; usup: cfloat; vmin: cfloat; vsup: cfloat; tolU: cfloat;
                tolV: cfloat) {.cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaGenExtPS; p: Pnt) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc setFlag*(this: var ExtremaGenExtPS; f: ExtremaExtFlag) {.cdecl,
    importcpp: "SetFlag", dynlib: tkgeombase.}
proc setAlgo*(this: var ExtremaGenExtPS; a: ExtremaExtAlgo) {.cdecl,
    importcpp: "SetAlgo", dynlib: tkgeombase.}
proc isDone*(this: ExtremaGenExtPS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        dynlib: tkgeombase.}
proc nbExt*(this: ExtremaGenExtPS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaGenExtPS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc point*(this: ExtremaGenExtPS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}