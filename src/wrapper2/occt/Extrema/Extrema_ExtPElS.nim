##  Created on: 1991-02-21
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real, Extrema_POnSurf

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Sphere"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_ExtPElS* {.importcpp: "Extrema_ExtPElS", header: "Extrema_ExtPElS.hxx",
                    bycopy.} = object


proc constructExtrema_ExtPElS*(): Extrema_ExtPElS {.constructor,
    importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc constructExtrema_ExtPElS*(P: gp_Pnt; S: gp_Cylinder; Tol: Standard_Real): Extrema_ExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Cylinder; Tol: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtrema_ExtPElS*(P: gp_Pnt; S: gp_Pln; Tol: Standard_Real): Extrema_ExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Pln; Tol: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtrema_ExtPElS*(P: gp_Pnt; S: gp_Cone; Tol: Standard_Real): Extrema_ExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Cone; Tol: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtrema_ExtPElS*(P: gp_Pnt; S: gp_Torus; Tol: Standard_Real): Extrema_ExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Torus; Tol: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc constructExtrema_ExtPElS*(P: gp_Pnt; S: gp_Sphere; Tol: Standard_Real): Extrema_ExtPElS {.
    constructor, importcpp: "Extrema_ExtPElS(@)", header: "Extrema_ExtPElS.hxx".}
proc Perform*(this: var Extrema_ExtPElS; P: gp_Pnt; S: gp_Sphere; Tol: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_ExtPElS.hxx".}
proc IsDone*(this: Extrema_ExtPElS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPElS.hxx".}
proc NbExt*(this: Extrema_ExtPElS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPElS.hxx".}
proc SquareDistance*(this: Extrema_ExtPElS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPElS.hxx".}
proc Point*(this: Extrema_ExtPElS; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "Point", header: "Extrema_ExtPElS.hxx".}