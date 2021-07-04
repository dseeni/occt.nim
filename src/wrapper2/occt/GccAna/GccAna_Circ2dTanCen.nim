##  Created on: 1991-03-18
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
  ../Standard/Standard_Integer, ../TColgp/TColgp_Array1OfCirc2d,
  ../GccEnt/GccEnt_Array1OfPosition, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real, ../GccEnt/GccEnt_Position

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
type
  GccAna_Circ2dTanCen* {.importcpp: "GccAna_Circ2dTanCen",
                        header: "GccAna_Circ2dTanCen.hxx", bycopy.} = object ## ! This method
                                                                        ## implements the
                                                                        ## algorithms used to
                                                                        ## ! create 2d circles tangent to a circle and
                                                                        ## ! centered on a point.


proc constructGccAna_Circ2dTanCen*(Qualified1: GccEnt_QualifiedCirc;
                                  Pcenter: gp_Pnt2d; Tolerance: Standard_Real): GccAna_Circ2dTanCen {.
    constructor, importcpp: "GccAna_Circ2dTanCen(@)",
    header: "GccAna_Circ2dTanCen.hxx".}
proc constructGccAna_Circ2dTanCen*(Linetan: gp_Lin2d; Pcenter: gp_Pnt2d): GccAna_Circ2dTanCen {.
    constructor, importcpp: "GccAna_Circ2dTanCen(@)",
    header: "GccAna_Circ2dTanCen.hxx".}
proc constructGccAna_Circ2dTanCen*(Point1: gp_Pnt2d; Pcenter: gp_Pnt2d): GccAna_Circ2dTanCen {.
    constructor, importcpp: "GccAna_Circ2dTanCen(@)",
    header: "GccAna_Circ2dTanCen.hxx".}
proc IsDone*(this: GccAna_Circ2dTanCen): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Circ2dTanCen.hxx".}
proc NbSolutions*(this: GccAna_Circ2dTanCen): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Circ2dTanCen.hxx".}
proc ThisSolution*(this: GccAna_Circ2dTanCen; Index: Standard_Integer): gp_Circ2d {.
    noSideEffect, importcpp: "ThisSolution", header: "GccAna_Circ2dTanCen.hxx".}
proc WhichQualifier*(this: GccAna_Circ2dTanCen; Index: Standard_Integer;
                    Qualif1: var GccEnt_Position) {.noSideEffect,
    importcpp: "WhichQualifier", header: "GccAna_Circ2dTanCen.hxx".}
proc Tangency1*(this: GccAna_Circ2dTanCen; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                    header: "GccAna_Circ2dTanCen.hxx".}
proc IsTheSame1*(this: GccAna_Circ2dTanCen; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "GccAna_Circ2dTanCen.hxx".}