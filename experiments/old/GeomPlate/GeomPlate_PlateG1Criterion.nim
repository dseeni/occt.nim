##  Created on: 1997-03-05
##  Created by: Joelle CHAUVET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of AdvApp2Var_Patch"
discard "forward decl of AdvApp2Var_Context"
type
  GeomPlatePlateG1Criterion* {.importcpp: "GeomPlate_PlateG1Criterion",
                              header: "GeomPlate_PlateG1Criterion.hxx", bycopy.} = object of AdvApp2VarCriterion


proc `new`*(this: var GeomPlatePlateG1Criterion; theSize: csize_t): pointer {.
    importcpp: "GeomPlate_PlateG1Criterion::operator new",
    header: "GeomPlate_PlateG1Criterion.hxx".}
proc `delete`*(this: var GeomPlatePlateG1Criterion; theAddress: pointer) {.
    importcpp: "GeomPlate_PlateG1Criterion::operator delete",
    header: "GeomPlate_PlateG1Criterion.hxx".}
proc `new[]`*(this: var GeomPlatePlateG1Criterion; theSize: csize_t): pointer {.
    importcpp: "GeomPlate_PlateG1Criterion::operator new[]",
    header: "GeomPlate_PlateG1Criterion.hxx".}
proc `delete[]`*(this: var GeomPlatePlateG1Criterion; theAddress: pointer) {.
    importcpp: "GeomPlate_PlateG1Criterion::operator delete[]",
    header: "GeomPlate_PlateG1Criterion.hxx".}
proc `new`*(this: var GeomPlatePlateG1Criterion; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomPlate_PlateG1Criterion::operator new",
    header: "GeomPlate_PlateG1Criterion.hxx".}
proc `delete`*(this: var GeomPlatePlateG1Criterion; a2: pointer; a3: pointer) {.
    importcpp: "GeomPlate_PlateG1Criterion::operator delete",
    header: "GeomPlate_PlateG1Criterion.hxx".}
proc constructGeomPlatePlateG1Criterion*(data: TColgpSequenceOfXY;
                                        g1Data: TColgpSequenceOfXYZ;
                                        maximum: StandardReal; `type`: AdvApp2VarCriterionType = advApp2VarAbsolute;
    repart: AdvApp2VarCriterionRepartition = advApp2VarRegular): GeomPlatePlateG1Criterion {.
    constructor, importcpp: "GeomPlate_PlateG1Criterion(@)",
    header: "GeomPlate_PlateG1Criterion.hxx".}
proc value*(this: GeomPlatePlateG1Criterion; p: var AdvApp2VarPatch;
           c: AdvApp2VarContext) {.noSideEffect, importcpp: "Value",
                                 header: "GeomPlate_PlateG1Criterion.hxx".}
proc isSatisfied*(this: GeomPlatePlateG1Criterion; p: AdvApp2VarPatch): StandardBoolean {.
    noSideEffect, importcpp: "IsSatisfied",
    header: "GeomPlate_PlateG1Criterion.hxx".}