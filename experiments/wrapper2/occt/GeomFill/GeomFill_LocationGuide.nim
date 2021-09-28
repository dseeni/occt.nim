##  Created on: 1998-07-08
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of GeomFill_TrihedronWithGuide"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_LocationGuide"
discard "forward decl of GeomFill_LocationGuide"
type
  HandleC1C1* = Handle[GeomFillLocationGuide]
  GeomFillLocationGuide* {.importcpp: "GeomFill_LocationGuide",
                          header: "GeomFill_LocationGuide.hxx", bycopy.} = object of GeomFillLocationLaw


proc constructGeomFillLocationGuide*(triedre: Handle[GeomFillTrihedronWithGuide]): GeomFillLocationGuide {.
    constructor, importcpp: "GeomFill_LocationGuide(@)",
    header: "GeomFill_LocationGuide.hxx".}
proc set*(this: var GeomFillLocationGuide; section: Handle[GeomFillSectionLaw];
         rotat: StandardBoolean; sFirst: StandardReal; sLast: StandardReal;
         precAngle: StandardReal; lastAngle: var StandardReal) {.importcpp: "Set",
    header: "GeomFill_LocationGuide.hxx".}
proc eraseRotation*(this: var GeomFillLocationGuide) {.importcpp: "EraseRotation",
    header: "GeomFill_LocationGuide.hxx".}
proc setCurve*(this: var GeomFillLocationGuide; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "SetCurve", header: "GeomFill_LocationGuide.hxx".}
proc getCurve*(this: GeomFillLocationGuide): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "GetCurve", header: "GeomFill_LocationGuide.hxx".}
proc setTrsf*(this: var GeomFillLocationGuide; transfo: Mat) {.importcpp: "SetTrsf",
    header: "GeomFill_LocationGuide.hxx".}
proc copy*(this: GeomFillLocationGuide): Handle[GeomFillLocationLaw] {.noSideEffect,
    importcpp: "Copy", header: "GeomFill_LocationGuide.hxx".}
proc d0*(this: var GeomFillLocationGuide; param: StandardReal; m: var Mat; v: var Vec): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_LocationGuide.hxx".}
proc d0*(this: var GeomFillLocationGuide; param: StandardReal; m: var Mat; v: var Vec;
        poles2d: var TColgpArray1OfPnt2d): StandardBoolean {.importcpp: "D0",
    header: "GeomFill_LocationGuide.hxx".}
proc d1*(this: var GeomFillLocationGuide; param: StandardReal; m: var Mat; v: var Vec;
        dm: var Mat; dv: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): StandardBoolean {.importcpp: "D1",
    header: "GeomFill_LocationGuide.hxx".}
proc d2*(this: var GeomFillLocationGuide; param: StandardReal; m: var Mat; v: var Vec;
        dm: var Mat; dv: var Vec; d2m: var Mat; d2v: var Vec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): StandardBoolean {.importcpp: "D2",
    header: "GeomFill_LocationGuide.hxx".}
proc hasFirstRestriction*(this: GeomFillLocationGuide): StandardBoolean {.
    noSideEffect, importcpp: "HasFirstRestriction",
    header: "GeomFill_LocationGuide.hxx".}
proc hasLastRestriction*(this: GeomFillLocationGuide): StandardBoolean {.
    noSideEffect, importcpp: "HasLastRestriction",
    header: "GeomFill_LocationGuide.hxx".}
proc traceNumber*(this: GeomFillLocationGuide): int {.noSideEffect,
    importcpp: "TraceNumber", header: "GeomFill_LocationGuide.hxx".}
proc errorStatus*(this: GeomFillLocationGuide): GeomFillPipeError {.noSideEffect,
    importcpp: "ErrorStatus", header: "GeomFill_LocationGuide.hxx".}
proc nbIntervals*(this: GeomFillLocationGuide; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomFill_LocationGuide.hxx".}
proc intervals*(this: GeomFillLocationGuide; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_LocationGuide.hxx".}
proc setInterval*(this: var GeomFillLocationGuide; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_LocationGuide.hxx".}
proc getInterval*(this: GeomFillLocationGuide; first: var StandardReal;
                 last: var StandardReal) {.noSideEffect, importcpp: "GetInterval",
                                        header: "GeomFill_LocationGuide.hxx".}
proc getDomain*(this: GeomFillLocationGuide; first: var StandardReal;
               last: var StandardReal) {.noSideEffect, importcpp: "GetDomain",
                                      header: "GeomFill_LocationGuide.hxx".}
proc setTolerance*(this: var GeomFillLocationGuide; tol3d: StandardReal;
                  tol2d: StandardReal) {.importcpp: "SetTolerance",
                                       header: "GeomFill_LocationGuide.hxx".}
proc resolution*(this: GeomFillLocationGuide; index: int; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "GeomFill_LocationGuide.hxx".}
proc getMaximalNorm*(this: var GeomFillLocationGuide): StandardReal {.
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationGuide.hxx".}
proc getAverageLaw*(this: var GeomFillLocationGuide; am: var Mat; av: var Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_LocationGuide.hxx".}
proc isTranslation*(this: GeomFillLocationGuide; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsTranslation", header: "GeomFill_LocationGuide.hxx".}
proc isRotation*(this: GeomFillLocationGuide; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsRotation", header: "GeomFill_LocationGuide.hxx".}
proc rotation*(this: GeomFillLocationGuide; center: var Pnt) {.noSideEffect,
    importcpp: "Rotation", header: "GeomFill_LocationGuide.hxx".}
proc section*(this: GeomFillLocationGuide): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Section", header: "GeomFill_LocationGuide.hxx".}
proc guide*(this: GeomFillLocationGuide): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "Guide", header: "GeomFill_LocationGuide.hxx".}
proc setOrigine*(this: var GeomFillLocationGuide; param1: StandardReal;
                param2: StandardReal) {.importcpp: "SetOrigine",
                                      header: "GeomFill_LocationGuide.hxx".}
proc computeAutomaticLaw*(this: GeomFillLocationGuide;
                         parAndRad: var Handle[TColgpHArray1OfPnt2d]): GeomFillPipeError {.
    noSideEffect, importcpp: "ComputeAutomaticLaw",
    header: "GeomFill_LocationGuide.hxx".}
type
  GeomFillLocationGuidebaseType* = GeomFillLocationLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_LocationGuide::get_type_name(@)",
                            header: "GeomFill_LocationGuide.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_LocationGuide::get_type_descriptor(@)",
    header: "GeomFill_LocationGuide.hxx".}
proc dynamicType*(this: GeomFillLocationGuide): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_LocationGuide.hxx".}