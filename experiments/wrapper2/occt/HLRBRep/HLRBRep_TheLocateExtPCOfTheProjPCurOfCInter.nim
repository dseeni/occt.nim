##  Created on: 1992-10-14
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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
discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter"
type
  HLRBRepTheLocateExtPCOfTheProjPCurOfCInter* {.
      importcpp: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter",
      header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx", bycopy.} = object


proc constructHLRBRepTheLocateExtPCOfTheProjPCurOfCInter*(): HLRBRepTheLocateExtPCOfTheProjPCurOfCInter {.
    constructor, importcpp: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc constructHLRBRepTheLocateExtPCOfTheProjPCurOfCInter*(p: Pnt2d;
    c: StandardAddress; u0: cfloat; tolU: cfloat): HLRBRepTheLocateExtPCOfTheProjPCurOfCInter {.
    constructor, importcpp: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc constructHLRBRepTheLocateExtPCOfTheProjPCurOfCInter*(p: Pnt2d;
    c: StandardAddress; u0: cfloat; umin: cfloat; usup: cfloat; tolU: cfloat): HLRBRepTheLocateExtPCOfTheProjPCurOfCInter {.
    constructor, importcpp: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc initialize*(this: var HLRBRepTheLocateExtPCOfTheProjPCurOfCInter;
                c: StandardAddress; umin: cfloat; usup: cfloat; tolU: cfloat) {.
    importcpp: "Initialize",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc perform*(this: var HLRBRepTheLocateExtPCOfTheProjPCurOfCInter; p: Pnt2d;
             u0: cfloat) {.importcpp: "Perform", header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc isDone*(this: HLRBRepTheLocateExtPCOfTheProjPCurOfCInter): bool {.noSideEffect,
    importcpp: "IsDone", header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc squareDistance*(this: HLRBRepTheLocateExtPCOfTheProjPCurOfCInter): cfloat {.
    noSideEffect, importcpp: "SquareDistance",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc isMin*(this: HLRBRepTheLocateExtPCOfTheProjPCurOfCInter): bool {.noSideEffect,
    importcpp: "IsMin", header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc point*(this: HLRBRepTheLocateExtPCOfTheProjPCurOfCInter): ExtremaPOnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}

























