##  Created on: 1996-03-05
##  Created by: Joelle CHAUVET
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of GeomPlate_Surface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of AdvApp2Var_Criterion"
type
  GeomPlateMakeApprox* {.importcpp: "GeomPlate_MakeApprox",
                        header: "GeomPlate_MakeApprox.hxx", bycopy.} = object


proc `new`*(this: var GeomPlateMakeApprox; theSize: csize_t): pointer {.
    importcpp: "GeomPlate_MakeApprox::operator new",
    header: "GeomPlate_MakeApprox.hxx".}
proc `delete`*(this: var GeomPlateMakeApprox; theAddress: pointer) {.
    importcpp: "GeomPlate_MakeApprox::operator delete",
    header: "GeomPlate_MakeApprox.hxx".}
proc `new[]`*(this: var GeomPlateMakeApprox; theSize: csize_t): pointer {.
    importcpp: "GeomPlate_MakeApprox::operator new[]",
    header: "GeomPlate_MakeApprox.hxx".}
proc `delete[]`*(this: var GeomPlateMakeApprox; theAddress: pointer) {.
    importcpp: "GeomPlate_MakeApprox::operator delete[]",
    header: "GeomPlate_MakeApprox.hxx".}
proc `new`*(this: var GeomPlateMakeApprox; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomPlate_MakeApprox::operator new",
    header: "GeomPlate_MakeApprox.hxx".}
proc `delete`*(this: var GeomPlateMakeApprox; a2: pointer; a3: pointer) {.
    importcpp: "GeomPlate_MakeApprox::operator delete",
    header: "GeomPlate_MakeApprox.hxx".}
proc constructGeomPlateMakeApprox*(surfPlate: Handle[GeomPlateSurface];
                                  plateCrit: AdvApp2VarCriterion;
                                  tol3d: StandardReal; nbmax: int; dgmax: int;
                                  continuity: GeomAbsShape = geomAbsC1;
                                  enlargeCoeff: StandardReal = 1.1): GeomPlateMakeApprox {.
    constructor, importcpp: "GeomPlate_MakeApprox(@)",
    header: "GeomPlate_MakeApprox.hxx".}
proc constructGeomPlateMakeApprox*(surfPlate: Handle[GeomPlateSurface];
                                  tol3d: StandardReal; nbmax: int; dgmax: int;
                                  dmax: StandardReal; critOrder: int = 0;
                                  continuity: GeomAbsShape = geomAbsC1;
                                  enlargeCoeff: StandardReal = 1.1): GeomPlateMakeApprox {.
    constructor, importcpp: "GeomPlate_MakeApprox(@)",
    header: "GeomPlate_MakeApprox.hxx".}
proc surface*(this: GeomPlateMakeApprox): Handle[GeomBSplineSurface] {.noSideEffect,
    importcpp: "Surface", header: "GeomPlate_MakeApprox.hxx".}
proc approxError*(this: GeomPlateMakeApprox): StandardReal {.noSideEffect,
    importcpp: "ApproxError", header: "GeomPlate_MakeApprox.hxx".}
proc criterionError*(this: GeomPlateMakeApprox): StandardReal {.noSideEffect,
    importcpp: "CriterionError", header: "GeomPlate_MakeApprox.hxx".}