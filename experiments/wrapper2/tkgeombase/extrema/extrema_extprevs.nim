##  Created on: 1999-09-21
##  Created by: Edward AGAPOV
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of GeomAdaptor_HSurfaceOfRevolution"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of Extrema_ExtPRevS"
type
  HandleExtremaExtPRevS* = Handle[ExtremaExtPRevS]

## ! It calculates all the extremum (minimum and
## ! maximum) distances between a point and a surface
## ! of revolution.

type
  ExtremaExtPRevS* {.importcpp: "Extrema_ExtPRevS", header: "Extrema_ExtPRevS.hxx",
                    bycopy.} = object of StandardTransient


proc newExtremaExtPRevS*(): ExtremaExtPRevS {.cdecl, constructor,
    importcpp: "Extrema_ExtPRevS(@)", dynlib: tkgeombase.}
proc newExtremaExtPRevS*(p: Pnt; s: Handle[GeomAdaptorHSurfaceOfRevolution];
                        umin: cfloat; usup: cfloat; vmin: cfloat; vsup: cfloat;
                        tolU: cfloat; tolV: cfloat): ExtremaExtPRevS {.cdecl,
    constructor, importcpp: "Extrema_ExtPRevS(@)", dynlib: tkgeombase.}
proc newExtremaExtPRevS*(p: Pnt; s: Handle[GeomAdaptorHSurfaceOfRevolution];
                        tolU: cfloat; tolV: cfloat): ExtremaExtPRevS {.cdecl,
    constructor, importcpp: "Extrema_ExtPRevS(@)", dynlib: tkgeombase.}
proc initialize*(this: var ExtremaExtPRevS;
                s: Handle[GeomAdaptorHSurfaceOfRevolution]; umin: cfloat;
                usup: cfloat; vmin: cfloat; vsup: cfloat; tolU: cfloat; tolV: cfloat) {.
    cdecl, importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaExtPRevS; p: Pnt) {.cdecl, importcpp: "Perform",
    dynlib: tkgeombase.}
proc isDone*(this: ExtremaExtPRevS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        dynlib: tkgeombase.}
proc nbExt*(this: ExtremaExtPRevS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                       dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaExtPRevS; n: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc point*(this: ExtremaExtPRevS; n: cint): ExtremaPOnSurf {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}