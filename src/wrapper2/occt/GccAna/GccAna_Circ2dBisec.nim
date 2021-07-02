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
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Circ2d"
discard "forward decl of GccInt_Bisec"
type
  GccAnaCirc2dBisec* {.importcpp: "GccAna_Circ2dBisec",
                      header: "GccAna_Circ2dBisec.hxx", bycopy.} = object ## ! Constructs bisecting curves between the two circles Circ1 and Circ2.


proc constructGccAnaCirc2dBisec*(circ1: GpCirc2d; circ2: GpCirc2d): GccAnaCirc2dBisec {.
    constructor, importcpp: "GccAna_Circ2dBisec(@)",
    header: "GccAna_Circ2dBisec.hxx".}
proc isDone*(this: GccAnaCirc2dBisec): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Circ2dBisec.hxx".}
proc nbSolutions*(this: GccAnaCirc2dBisec): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Circ2dBisec.hxx".}
proc thisSolution*(this: GccAnaCirc2dBisec; index: StandardInteger): Handle[
    GccIntBisec] {.noSideEffect, importcpp: "ThisSolution",
                  header: "GccAna_Circ2dBisec.hxx".}

