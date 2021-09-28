##  Created on: 1991-04-03
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of GccEnt_QualifiedCirc"
type
  GccAnaLin2dTanObl* {.importcpp: "GccAna_Lin2dTanObl",
                      header: "GccAna_Lin2dTanObl.hxx", bycopy.} = object ## ! This class implements the algorithms used to
                                                                     ## ! create 2d line passing through a point and
                                                                     ## ! making an angle with a line.


proc constructGccAnaLin2dTanObl*(thePoint: Pnt2d; theLine: Lin2d; theAngle: cfloat): GccAnaLin2dTanObl {.
    constructor, importcpp: "GccAna_Lin2dTanObl(@)",
    header: "GccAna_Lin2dTanObl.hxx".}
proc constructGccAnaLin2dTanObl*(qualified1: GccEntQualifiedCirc; theLine: Lin2d;
                                theAngle: cfloat): GccAnaLin2dTanObl {.constructor,
    importcpp: "GccAna_Lin2dTanObl(@)", header: "GccAna_Lin2dTanObl.hxx".}
proc isDone*(this: GccAnaLin2dTanObl): bool {.noSideEffect, importcpp: "IsDone",
    header: "GccAna_Lin2dTanObl.hxx".}
proc nbSolutions*(this: GccAnaLin2dTanObl): cint {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Lin2dTanObl.hxx".}
proc thisSolution*(this: GccAnaLin2dTanObl; index: cint): Lin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "GccAna_Lin2dTanObl.hxx".}
proc whichQualifier*(this: GccAnaLin2dTanObl; index: cint;
                    qualif1: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "GccAna_Lin2dTanObl.hxx".}
proc tangency1*(this: GccAnaLin2dTanObl; index: cint; parSol: var cfloat;
               parArg: var cfloat; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "GccAna_Lin2dTanObl.hxx".}
proc intersection2*(this: GccAnaLin2dTanObl; index: cint; parSol: var cfloat;
                   parArg: var cfloat; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Intersection2", header: "GccAna_Lin2dTanObl.hxx".}

























