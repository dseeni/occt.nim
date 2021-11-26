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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC"
type
  ExtremaLocEPCOfLocateExtPC* {.importcpp: "Extrema_LocEPCOfLocateExtPC",
                               header: "Extrema_LocEPCOfLocateExtPC.hxx", bycopy.} = object


proc newExtremaLocEPCOfLocateExtPC*(): ExtremaLocEPCOfLocateExtPC {.cdecl,
    constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)", dynlib: tkgeombase.}
proc newExtremaLocEPCOfLocateExtPC*(p: Pnt; c: Adaptor3dCurve; u0: cfloat; tolU: cfloat): ExtremaLocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)",
    dynlib: tkgeombase.}
proc newExtremaLocEPCOfLocateExtPC*(p: Pnt; c: Adaptor3dCurve; u0: cfloat;
                                   umin: cfloat; usup: cfloat; tolU: cfloat): ExtremaLocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)",
    dynlib: tkgeombase.}
proc initialize*(this: var ExtremaLocEPCOfLocateExtPC; c: Adaptor3dCurve;
                umin: cfloat; usup: cfloat; tolU: cfloat) {.cdecl,
    importcpp: "Initialize", dynlib: tkgeombase.}
proc perform*(this: var ExtremaLocEPCOfLocateExtPC; p: Pnt; u0: cfloat) {.cdecl,
    importcpp: "Perform", dynlib: tkgeombase.}
proc isDone*(this: ExtremaLocEPCOfLocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", dynlib: tkgeombase.}
proc squareDistance*(this: ExtremaLocEPCOfLocateExtPC): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkgeombase.}
proc isMin*(this: ExtremaLocEPCOfLocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", dynlib: tkgeombase.}
proc point*(this: ExtremaLocEPCOfLocateExtPC): ExtremaPOnCurv {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}