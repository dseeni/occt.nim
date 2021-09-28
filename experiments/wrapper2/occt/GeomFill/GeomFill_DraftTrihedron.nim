##  Created on: 1998-04-14
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of GeomFill_DraftTrihedron"
discard "forward decl of GeomFill_DraftTrihedron"
type
  HandleC1C1* = Handle[GeomFillDraftTrihedron]
  GeomFillDraftTrihedron* {.importcpp: "GeomFill_DraftTrihedron",
                           header: "GeomFill_DraftTrihedron.hxx", bycopy.} = object of GeomFillTrihedronLaw


proc constructGeomFillDraftTrihedron*(biNormal: Vec; angle: StandardReal): GeomFillDraftTrihedron {.
    constructor, importcpp: "GeomFill_DraftTrihedron(@)",
    header: "GeomFill_DraftTrihedron.hxx".}
proc setAngle*(this: var GeomFillDraftTrihedron; angle: StandardReal) {.
    importcpp: "SetAngle", header: "GeomFill_DraftTrihedron.hxx".}
proc copy*(this: GeomFillDraftTrihedron): Handle[GeomFillTrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_DraftTrihedron.hxx".}
proc d0*(this: var GeomFillDraftTrihedron; param: StandardReal; tangent: var Vec;
        normal: var Vec; biNormal: var Vec): StandardBoolean {.importcpp: "D0",
    header: "GeomFill_DraftTrihedron.hxx".}
proc d1*(this: var GeomFillDraftTrihedron; param: StandardReal; tangent: var Vec;
        dTangent: var Vec; normal: var Vec; dNormal: var Vec; biNormal: var Vec;
        dBiNormal: var Vec): StandardBoolean {.importcpp: "D1",
    header: "GeomFill_DraftTrihedron.hxx".}
proc d2*(this: var GeomFillDraftTrihedron; param: StandardReal; tangent: var Vec;
        dTangent: var Vec; d2Tangent: var Vec; normal: var Vec; dNormal: var Vec;
        d2Normal: var Vec; biNormal: var Vec; dBiNormal: var Vec; d2BiNormal: var Vec): StandardBoolean {.
    importcpp: "D2", header: "GeomFill_DraftTrihedron.hxx".}
proc nbIntervals*(this: GeomFillDraftTrihedron; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomFill_DraftTrihedron.hxx".}
proc intervals*(this: GeomFillDraftTrihedron; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_DraftTrihedron.hxx".}
proc getAverageLaw*(this: var GeomFillDraftTrihedron; aTangent: var Vec;
                   aNormal: var Vec; aBiNormal: var Vec) {.importcpp: "GetAverageLaw",
    header: "GeomFill_DraftTrihedron.hxx".}
proc isConstant*(this: GeomFillDraftTrihedron): StandardBoolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_DraftTrihedron.hxx".}
proc isOnlyBy3dCurve*(this: GeomFillDraftTrihedron): StandardBoolean {.noSideEffect,
    importcpp: "IsOnlyBy3dCurve", header: "GeomFill_DraftTrihedron.hxx".}
type
  GeomFillDraftTrihedronbaseType* = GeomFillTrihedronLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_DraftTrihedron::get_type_name(@)",
                            header: "GeomFill_DraftTrihedron.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_DraftTrihedron::get_type_descriptor(@)",
    header: "GeomFill_DraftTrihedron.hxx".}
proc dynamicType*(this: GeomFillDraftTrihedron): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_DraftTrihedron.hxx".}