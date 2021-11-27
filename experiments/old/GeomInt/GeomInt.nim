##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of GeomInt_IntSS"
discard "forward decl of GeomInt_LineConstructor"
discard "forward decl of GeomInt_LineTool"
discard "forward decl of GeomInt_WLApprox"
discard "forward decl of GeomInt_ParameterAndOrientation"
discard "forward decl of GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_ThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheImpPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_MyGradientbisOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_TheComputeLineOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_TheComputeLineBezierOfWLApprox"
type
  GeomInt* {.importcpp: "GeomInt", header: "GeomInt.hxx", bycopy.} = object


proc `new`*(this: var GeomInt; theSize: csize_t): pointer {.
    importcpp: "GeomInt::operator new", header: "GeomInt.hxx".}
proc `delete`*(this: var GeomInt; theAddress: pointer) {.
    importcpp: "GeomInt::operator delete", header: "GeomInt.hxx".}
proc `new[]`*(this: var GeomInt; theSize: csize_t): pointer {.
    importcpp: "GeomInt::operator new[]", header: "GeomInt.hxx".}
proc `delete[]`*(this: var GeomInt; theAddress: pointer) {.
    importcpp: "GeomInt::operator delete[]", header: "GeomInt.hxx".}
proc `new`*(this: var GeomInt; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomInt::operator new", header: "GeomInt.hxx".}
proc `delete`*(this: var GeomInt; a2: pointer; a3: pointer) {.
    importcpp: "GeomInt::operator delete", header: "GeomInt.hxx".}
proc adjustPeriodic*(thePar: StandardReal; theParMin: StandardReal;
                    theParMax: StandardReal; thePeriod: StandardReal;
                    theNewPar: var StandardReal; theOffset: var StandardReal;
                    theEps: StandardReal = 0.0): StandardBoolean {.
    importcpp: "GeomInt::AdjustPeriodic(@)", header: "GeomInt.hxx".}