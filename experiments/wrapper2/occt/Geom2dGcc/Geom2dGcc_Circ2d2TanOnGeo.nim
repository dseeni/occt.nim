##  Created on: 1991-03-29
##  Created by: Remi GILET
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  Geom2dGccCirc2d2TanOnGeo* {.importcpp: "Geom2dGcc_Circ2d2TanOnGeo",
                             header: "Geom2dGcc_Circ2d2TanOnGeo.hxx", bycopy.} = object


proc `new`*(this: var Geom2dGccCirc2d2TanOnGeo; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_Circ2d2TanOnGeo::operator new",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc `delete`*(this: var Geom2dGccCirc2d2TanOnGeo; theAddress: pointer) {.
    importcpp: "Geom2dGcc_Circ2d2TanOnGeo::operator delete",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc `new[]`*(this: var Geom2dGccCirc2d2TanOnGeo; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_Circ2d2TanOnGeo::operator new[]",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc `delete[]`*(this: var Geom2dGccCirc2d2TanOnGeo; theAddress: pointer) {.
    importcpp: "Geom2dGcc_Circ2d2TanOnGeo::operator delete[]",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc `new`*(this: var Geom2dGccCirc2d2TanOnGeo; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc_Circ2d2TanOnGeo::operator new",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc `delete`*(this: var Geom2dGccCirc2d2TanOnGeo; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc_Circ2d2TanOnGeo::operator delete",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc constructGeom2dGccCirc2d2TanOnGeo*(qualified1: GccEntQualifiedCirc;
                                       qualified2: GccEntQualifiedCirc;
                                       onCurv: Geom2dAdaptorCurve;
                                       tolerance: StandardReal): Geom2dGccCirc2d2TanOnGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnGeo(@)",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc constructGeom2dGccCirc2d2TanOnGeo*(qualified1: GccEntQualifiedCirc;
                                       qualified2: GccEntQualifiedLin;
                                       onCurv: Geom2dAdaptorCurve;
                                       tolerance: StandardReal): Geom2dGccCirc2d2TanOnGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnGeo(@)",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc constructGeom2dGccCirc2d2TanOnGeo*(qualified1: GccEntQualifiedCirc;
                                       point2: Pnt2d; onCurv: Geom2dAdaptorCurve;
                                       tolerance: StandardReal): Geom2dGccCirc2d2TanOnGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnGeo(@)",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc constructGeom2dGccCirc2d2TanOnGeo*(qualified1: GccEntQualifiedLin;
                                       qualified2: GccEntQualifiedLin;
                                       onCurv: Geom2dAdaptorCurve;
                                       tolerance: StandardReal): Geom2dGccCirc2d2TanOnGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnGeo(@)",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc constructGeom2dGccCirc2d2TanOnGeo*(qualified1: GccEntQualifiedLin;
                                       qualified2: Pnt2d;
                                       onCurv: Geom2dAdaptorCurve;
                                       tolerance: StandardReal): Geom2dGccCirc2d2TanOnGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnGeo(@)",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc constructGeom2dGccCirc2d2TanOnGeo*(point1: Pnt2d; point2: Pnt2d;
                                       onCurv: Geom2dAdaptorCurve;
                                       tolerance: StandardReal): Geom2dGccCirc2d2TanOnGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnGeo(@)",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc isDone*(this: Geom2dGccCirc2d2TanOnGeo): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2d2TanOnGeo): int {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc thisSolution*(this: Geom2dGccCirc2d2TanOnGeo; index: int): Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2d2TanOnGeo; index: int;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier",
    header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc tangency1*(this: Geom2dGccCirc2d2TanOnGeo; index: int; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc tangency2*(this: Geom2dGccCirc2d2TanOnGeo; index: int; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc centerOn3*(this: Geom2dGccCirc2d2TanOnGeo; index: int; parArg: var StandardReal;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "CenterOn3",
                                 header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2d2TanOnGeo; index: int): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}
proc isTheSame2*(this: Geom2dGccCirc2d2TanOnGeo; index: int): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d2TanOnGeo.hxx".}