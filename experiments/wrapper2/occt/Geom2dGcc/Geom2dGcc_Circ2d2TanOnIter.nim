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
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Lin2d"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGccCirc2d2TanOnIter* {.importcpp: "Geom2dGcc_Circ2d2TanOnIter",
                              header: "Geom2dGcc_Circ2d2TanOnIter.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## This
                                                                                     ## method
                                                                                     ## implements
                                                                                     ## the
                                                                                     ## algorithms
                                                                                     ## used
                                                                                     ## to
                                                                                     ##
                                                                                     ## !
                                                                                     ## create
                                                                                     ## 2d
                                                                                     ## circles
                                                                                     ## TANgent
                                                                                     ## to
                                                                                     ## a
                                                                                     ## 2d
                                                                                     ## circle
                                                                                     ## and
                                                                                     ## a
                                                                                     ## curve
                                                                                     ## and
                                                                                     ##
                                                                                     ## !
                                                                                     ## having
                                                                                     ## the
                                                                                     ## center
                                                                                     ## ON
                                                                                     ## a
                                                                                     ## 2d
                                                                                     ## line.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Param2
                                                                                     ## is
                                                                                     ## the
                                                                                     ## initial
                                                                                     ## guess
                                                                                     ## on
                                                                                     ## the
                                                                                     ## curve
                                                                                     ## QualifiedCurv.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Tolerance
                                                                                     ## is
                                                                                     ## used
                                                                                     ## for
                                                                                     ## the
                                                                                     ## limit
                                                                                     ## cases.


proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: GccEntQualifiedCirc;
                                        qualified2: Geom2dGccQCurve;
                                        onLine: Lin2d; param1: float; param2: float;
                                        param3: float; tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: GccEntQualifiedLin;
                                        qualified2: Geom2dGccQCurve;
                                        onLine: Lin2d; param1: float; param2: float;
                                        param3: float; tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: Geom2dGccQCurve;
                                        qualified2: Geom2dGccQCurve;
                                        onLine: Lin2d; param1: float; param2: float;
                                        param3: float; tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: Geom2dGccQCurve;
                                        point2: Pnt2d; onLine: Lin2d; param1: float;
                                        param2: float; tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: GccEntQualifiedCirc;
                                        qualified2: Geom2dGccQCurve;
                                        onCirc: Circ2d; param1: float;
                                        param2: float; param3: float;
                                        tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: GccEntQualifiedLin;
                                        qualified2: Geom2dGccQCurve;
                                        onCirc: Circ2d; param1: float;
                                        param2: float; param3: float;
                                        tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: Geom2dGccQCurve;
                                        qualified2: Geom2dGccQCurve;
                                        onCirc: Circ2d; param1: float;
                                        param2: float; param3: float;
                                        tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: Geom2dGccQCurve;
                                        point2: Pnt2d; onCirc: Circ2d;
                                        param1: float; param2: float;
                                        tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: GccEntQualifiedCirc;
                                        qualified2: Geom2dGccQCurve;
                                        onCurv: Geom2dAdaptorCurve; param1: float;
                                        param2: float; paramOn: float;
                                        tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: GccEntQualifiedLin;
                                        qualified2: Geom2dGccQCurve;
                                        onCurve: Geom2dAdaptorCurve;
                                        param1: float; param2: float;
                                        paramOn: float; tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: Geom2dGccQCurve;
                                        point2: Pnt2d;
                                        onCurve: Geom2dAdaptorCurve;
                                        param1: float; paramOn: float;
                                        tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGccCirc2d2TanOnIter*(qualified1: Geom2dGccQCurve;
                                        qualified2: Geom2dGccQCurve;
                                        onCurve: Geom2dAdaptorCurve;
                                        param1: float; param2: float;
                                        paramOn: float; tolerance: float): Geom2dGccCirc2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc isDone*(this: Geom2dGccCirc2d2TanOnIter): bool {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc thisSolution*(this: Geom2dGccCirc2d2TanOnIter): Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2d2TanOnIter; qualif1: var GccEntPosition;
                    qualif2: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc tangency1*(this: Geom2dGccCirc2d2TanOnIter; parSol: var float; parArg: var float;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                 header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc tangency2*(this: Geom2dGccCirc2d2TanOnIter; parSol: var float; parArg: var float;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "Tangency2",
                                 header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc centerOn3*(this: Geom2dGccCirc2d2TanOnIter; parArg: var float; pntSol: var Pnt2d) {.
    noSideEffect, importcpp: "CenterOn3", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2d2TanOnIter): bool {.noSideEffect,
    importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc isTheSame2*(this: Geom2dGccCirc2d2TanOnIter): bool {.noSideEffect,
    importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
