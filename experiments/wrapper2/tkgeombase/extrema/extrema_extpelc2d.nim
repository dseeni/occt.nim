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


proc newExtremaExtPElC2d*(): ExtremaExtPElC2d {.cdecl, constructor,
    importcpp: "Extrema_ExtPElC2d(@)", dynlib: tkgeombase.}
proc newExtremaExtPElC2d*(p: Pnt2d; c: Lin2d; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC2d(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC2d; p: Pnt2d; L: Lin2d; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElC2d*(p: Pnt2d; c: Circ2d; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC2d(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC2d; p: Pnt2d; c: Circ2d; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElC2d*(p: Pnt2d; c: Elips2d; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC2d(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC2d; p: Pnt2d; c: Elips2d; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElC2d*(p: Pnt2d; c: Hypr2d; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC2d(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC2d; p: Pnt2d; c: Hypr2d; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc newExtremaExtPElC2d*(p: Pnt2d; c: Parab2d; tol: cfloat; uinf: cfloat; usup: cfloat): ExtremaExtPElC2d {.
    cdecl, constructor, importcpp: "Extrema_ExtPElC2d(@)", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPElC2d; p: Pnt2d; c: Parab2d; tol: cfloat; uinf: cfloat;
             usup: cfloat) {.cdecl, importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtPElC2d): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtPElC2d): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtPElC2d; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc isMin*(this: ExtremaExtPElC2d; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", dynlib: tkgeombase.}
proc point*(this: ExtremaExtPElC2d; n: cint): ExtremaPOnCurv2d {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}