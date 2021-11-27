##  Created on: 1996-03-06
##  Created by: Philippe MANGIN
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

discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt2d"
type
  FairCurveEnergy* {.importcpp: "FairCurve_Energy", header: "FairCurve_Energy.hxx",
                    bycopy.} = object of MathMultipleVarFunctionWithHessian ## ! returns the number of variables of the energy.
                                                                       ## ! Angles
                                                                       ## corresspond to the Ox axis
                                                                       ## !
                                                                       ## ConstrOrder1(2) can be equal to 0, 1 or 2


proc nbVariables*(this: FairCurveEnergy): cint {.noSideEffect,
    importcpp: "NbVariables", header: "FairCurve_Energy.hxx".}
proc value*(this: var FairCurveEnergy; x: MathVector; e: var cfloat): bool {.
    importcpp: "Value", header: "FairCurve_Energy.hxx".}
proc gradient*(this: var FairCurveEnergy; x: MathVector; g: var MathVector): bool {.
    importcpp: "Gradient", header: "FairCurve_Energy.hxx".}
proc values*(this: var FairCurveEnergy; x: MathVector; e: var cfloat; g: var MathVector): bool {.
    importcpp: "Values", header: "FairCurve_Energy.hxx".}
proc values*(this: var FairCurveEnergy; x: MathVector; e: var cfloat; g: var MathVector;
            h: var MathMatrix): bool {.importcpp: "Values",
                                   header: "FairCurve_Energy.hxx".}
proc variable*(this: FairCurveEnergy; x: var MathVector): bool {.noSideEffect,
    importcpp: "Variable", header: "FairCurve_Energy.hxx".}
proc poles*(this: FairCurveEnergy): Handle[TColgpHArray1OfPnt2d] {.noSideEffect,
    importcpp: "Poles", header: "FairCurve_Energy.hxx".}
























