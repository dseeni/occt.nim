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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  GeomIntMyBSplGradientOfTheComputeLineOfWLApprox* {.
      importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox",
      header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx", bycopy.} = object


proc `new`*(this: var GeomIntMyBSplGradientOfTheComputeLineOfWLApprox;
           theSize: csize_t): pointer {.importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox::operator new", header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntMyBSplGradientOfTheComputeLineOfWLApprox;
              theAddress: pointer) {.importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox::operator delete", header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `new[]`*(this: var GeomIntMyBSplGradientOfTheComputeLineOfWLApprox;
             theSize: csize_t): pointer {.importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox::operator new[]", header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `delete[]`*(this: var GeomIntMyBSplGradientOfTheComputeLineOfWLApprox;
                theAddress: pointer) {.importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox::operator delete[]", header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `new`*(this: var GeomIntMyBSplGradientOfTheComputeLineOfWLApprox; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox::operator new", header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntMyBSplGradientOfTheComputeLineOfWLApprox;
              a2: pointer; a3: pointer) {.importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox::operator delete", header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomIntMyBSplGradientOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; deg: int; tol3d: StandardReal; tol2d: StandardReal;
    nbIterations: int = 1): GeomIntMyBSplGradientOfTheComputeLineOfWLApprox {.
    constructor,
    importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox(@)",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc constructGeomIntMyBSplGradientOfTheComputeLineOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; deg: int; tol3d: StandardReal; tol2d: StandardReal;
    nbIterations: int; lambda1: StandardReal; lambda2: StandardReal): GeomIntMyBSplGradientOfTheComputeLineOfWLApprox {.
    constructor,
    importcpp: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox(@)",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc isDone*(this: GeomIntMyBSplGradientOfTheComputeLineOfWLApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc value*(this: GeomIntMyBSplGradientOfTheComputeLineOfWLApprox): AppParCurvesMultiBSpCurve {.
    noSideEffect, importcpp: "Value",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc error*(this: GeomIntMyBSplGradientOfTheComputeLineOfWLApprox; index: int): StandardReal {.
    noSideEffect, importcpp: "Error",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc maxError3d*(this: GeomIntMyBSplGradientOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc maxError2d*(this: GeomIntMyBSplGradientOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}
proc averageError*(this: GeomIntMyBSplGradientOfTheComputeLineOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "AverageError",
    header: "GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx".}