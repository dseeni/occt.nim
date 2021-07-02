##  Created on: 1996-02-09
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

discard "forward decl of FairCurve_BattenLaw"
type
  FairCurveDistributionOfSagging* {.importcpp: "FairCurve_DistributionOfSagging", header: "FairCurve_DistributionOfSagging.hxx",
                                   bycopy.} = object of FairCurveDistributionOfEnergy


proc constructFairCurveDistributionOfSagging*(bSplOrder: StandardInteger;
    flatKnots: Handle[TColStdHArray1OfReal]; poles: Handle[TColgpHArray1OfPnt2d];
    derivativeOrder: StandardInteger; law: FairCurveBattenLaw;
    nbValAux: StandardInteger = 0): FairCurveDistributionOfSagging {.constructor,
    importcpp: "FairCurve_DistributionOfSagging(@)",
    header: "FairCurve_DistributionOfSagging.hxx".}
proc value*(this: var FairCurveDistributionOfSagging; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "FairCurve_DistributionOfSagging.hxx".}

