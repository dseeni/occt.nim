##  Created on: 1992-05-07
##  Created by: Jacques GOUSSARD
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntPatch_Line"
type
  IntPatchImpPrmIntersection* {.importcpp: "IntPatch_ImpPrmIntersection",
                               header: "IntPatch_ImpPrmIntersection.hxx", bycopy.} = object


proc constructIntPatchImpPrmIntersection*(): IntPatchImpPrmIntersection {.
    constructor, importcpp: "IntPatch_ImpPrmIntersection(@)",
    header: "IntPatch_ImpPrmIntersection.hxx".}
proc constructIntPatchImpPrmIntersection*(surf1: Handle[Adaptor3dHSurface];
    d1: Handle[Adaptor3dTopolTool]; surf2: Handle[Adaptor3dHSurface];
    d2: Handle[Adaptor3dTopolTool]; tolArc: StandardReal; tolTang: StandardReal;
    fleche: StandardReal; pas: StandardReal): IntPatchImpPrmIntersection {.
    constructor, importcpp: "IntPatch_ImpPrmIntersection(@)",
    header: "IntPatch_ImpPrmIntersection.hxx".}
proc setStartPoint*(this: var IntPatchImpPrmIntersection; u: StandardReal;
                   v: StandardReal) {.importcpp: "SetStartPoint",
                                    header: "IntPatch_ImpPrmIntersection.hxx".}
proc perform*(this: var IntPatchImpPrmIntersection;
             surf1: Handle[Adaptor3dHSurface]; d1: Handle[Adaptor3dTopolTool];
             surf2: Handle[Adaptor3dHSurface]; d2: Handle[Adaptor3dTopolTool];
             tolArc: StandardReal; tolTang: StandardReal; fleche: StandardReal;
             pas: StandardReal) {.importcpp: "Perform",
                                header: "IntPatch_ImpPrmIntersection.hxx".}
proc isDone*(this: IntPatchImpPrmIntersection): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_ImpPrmIntersection.hxx".}
proc isEmpty*(this: IntPatchImpPrmIntersection): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntPatch_ImpPrmIntersection.hxx".}
proc nbPnts*(this: IntPatchImpPrmIntersection): StandardInteger {.noSideEffect,
    importcpp: "NbPnts", header: "IntPatch_ImpPrmIntersection.hxx".}
proc point*(this: IntPatchImpPrmIntersection; index: StandardInteger): IntPatchPoint {.
    noSideEffect, importcpp: "Point", header: "IntPatch_ImpPrmIntersection.hxx".}
proc nbLines*(this: IntPatchImpPrmIntersection): StandardInteger {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_ImpPrmIntersection.hxx".}
proc line*(this: IntPatchImpPrmIntersection; index: StandardInteger): Handle[
    IntPatchLine] {.noSideEffect, importcpp: "Line",
                   header: "IntPatch_ImpPrmIntersection.hxx".}

