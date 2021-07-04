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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../gp/gp_Circ2d, ../gp/gp_Pnt2d,
  ../Standard/Standard_Real

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of GccInt_Bisec"
type
  GccAna_CircPnt2dBisec* {.importcpp: "GccAna_CircPnt2dBisec",
                          header: "GccAna_CircPnt2dBisec.hxx", bycopy.} = object ## !
                                                                            ## Constructs
                                                                            ## bisecting
                                                                            ## curves
                                                                            ## between the
                                                                            ## circle
                                                                            ## Circle1 and the
                                                                            ## point
                                                                            ## Point2.
                                                                            ## !
                                                                            ## Defines the
                                                                            ## number and the type of
                                                                            ## solutions
                                                                            ## !
                                                                            ## depending on
                                                                            ## input data


proc constructGccAna_CircPnt2dBisec*(Circle1: gp_Circ2d; Point2: gp_Pnt2d): GccAna_CircPnt2dBisec {.
    constructor, importcpp: "GccAna_CircPnt2dBisec(@)",
    header: "GccAna_CircPnt2dBisec.hxx".}
proc constructGccAna_CircPnt2dBisec*(Circle1: gp_Circ2d; Point2: gp_Pnt2d;
                                    Tolerance: Standard_Real): GccAna_CircPnt2dBisec {.
    constructor, importcpp: "GccAna_CircPnt2dBisec(@)",
    header: "GccAna_CircPnt2dBisec.hxx".}
proc IsDone*(this: GccAna_CircPnt2dBisec): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_CircPnt2dBisec.hxx".}
proc NbSolutions*(this: GccAna_CircPnt2dBisec): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_CircPnt2dBisec.hxx".}
proc ThisSolution*(this: GccAna_CircPnt2dBisec; Index: Standard_Integer): handle[
    GccInt_Bisec] {.noSideEffect, importcpp: "ThisSolution",
                   header: "GccAna_CircPnt2dBisec.hxx".}