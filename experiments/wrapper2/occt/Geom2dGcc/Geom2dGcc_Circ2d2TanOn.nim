##  Created on: 1992-10-20
##  Created by: Remi GILET
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
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2d_Point"
discard "forward decl of GccAna_Circ2d2TanOn"
discard "forward decl of Geom2dGcc_Circ2d2TanOnGeo"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGccCirc2d2TanOn* {.importcpp: "Geom2dGcc_Circ2d2TanOn",
                          header: "Geom2dGcc_Circ2d2TanOn.hxx", bycopy.} = object ## !
                                                                             ## This
                                                                             ## method
                                                                             ## implements the
                                                                             ## algorithms
                                                                             ## used to
                                                                             ## !
                                                                             ## create 2d
                                                                             ## circles
                                                                             ## TANgent to two
                                                                             ## curves and
                                                                             ## !
                                                                             ## having the
                                                                             ## center ON a 2d
                                                                             ## curve.
                                                                             ## !
                                                                             ## Param1 is the
                                                                             ## initial
                                                                             ## guess on the
                                                                             ## first
                                                                             ## curve
                                                                             ## QualifiedCurv.
                                                                             ## !
                                                                             ## Param1 is the
                                                                             ## initial
                                                                             ## guess on the
                                                                             ## second
                                                                             ## curve
                                                                             ## QualifiedCurv.
                                                                             ## !
                                                                             ## ParamOn is the
                                                                             ## initial
                                                                             ## guess on the
                                                                             ## center
                                                                             ## curve
                                                                             ## OnCurv.
                                                                             ## !
                                                                             ## Tolerance is
                                                                             ## used for the
                                                                             ## limit
                                                                             ## cases.


proc constructGeom2dGccCirc2d2TanOn*(qualified1: Geom2dGccQualifiedCurve;
                                    qualified2: Geom2dGccQualifiedCurve;
                                    onCurve: Geom2dAdaptorCurve; tolerance: float;
                                    param1: float; param2: float; paramOn: float): Geom2dGccCirc2d2TanOn {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOn(@)",
    header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc constructGeom2dGccCirc2d2TanOn*(qualified1: Geom2dGccQualifiedCurve;
                                    point: Handle[Geom2dPoint];
                                    onCurve: Geom2dAdaptorCurve; tolerance: float;
                                    param1: float; paramOn: float): Geom2dGccCirc2d2TanOn {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOn(@)",
    header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc constructGeom2dGccCirc2d2TanOn*(point1: Handle[Geom2dPoint];
                                    point2: Handle[Geom2dPoint];
                                    onCurve: Geom2dAdaptorCurve; tolerance: float): Geom2dGccCirc2d2TanOn {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOn(@)",
    header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc results*(this: var Geom2dGccCirc2d2TanOn; circ: GccAnaCirc2d2TanOn) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc results*(this: var Geom2dGccCirc2d2TanOn; circ: Geom2dGccCirc2d2TanOnGeo) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc isDone*(this: Geom2dGccCirc2d2TanOn): bool {.noSideEffect, importcpp: "IsDone",
    header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2d2TanOn): int {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc thisSolution*(this: Geom2dGccCirc2d2TanOn; index: int): Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2d2TanOn; index: int;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc tangency1*(this: Geom2dGccCirc2d2TanOn; index: int; parSol: var float;
               parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc tangency2*(this: Geom2dGccCirc2d2TanOn; index: int; parSol: var float;
               parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc centerOn3*(this: Geom2dGccCirc2d2TanOn; index: int; parArg: var float;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "CenterOn3",
                                 header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2d2TanOn; index: int): bool {.noSideEffect,
    importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
proc isTheSame2*(this: Geom2dGccCirc2d2TanOn; index: int): bool {.noSideEffect,
    importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d2TanOn.hxx".}
