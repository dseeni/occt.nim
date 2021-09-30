##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
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
discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of BRepApprox_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfApprox"
discard "forward decl of AppParCurves_MultiBSpCurve"
type
  BRepApproxMyBSplGradientOfTheComputeLineOfApprox* {.
      importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox",
      header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx", bycopy.} = object


proc `new`*(this: var BRepApproxMyBSplGradientOfTheComputeLineOfApprox;
           theSize: csize_t): pointer {.importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox::operator new", header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxMyBSplGradientOfTheComputeLineOfApprox;
              theAddress: pointer) {.importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxMyBSplGradientOfTheComputeLineOfApprox;
             theSize: csize_t): pointer {.importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox::operator new[]", header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxMyBSplGradientOfTheComputeLineOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox::operator delete[]", header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `new`*(this: var BRepApproxMyBSplGradientOfTheComputeLineOfApprox; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox::operator new", header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc `delete`*(this: var BRepApproxMyBSplGradientOfTheComputeLineOfApprox;
              a2: pointer; a3: pointer) {.importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox::operator delete", header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxMyBSplGradientOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; deg: int; tol3d: StandardReal; tol2d: StandardReal;
    nbIterations: int = 1): BRepApproxMyBSplGradientOfTheComputeLineOfApprox {.
    constructor,
    importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox(@)",
    header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc constructBRepApproxMyBSplGradientOfTheComputeLineOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: var MathVector; knots: TColStdArray1OfReal;
    mults: TColStdArray1OfInteger; deg: int; tol3d: StandardReal; tol2d: StandardReal;
    nbIterations: int; lambda1: StandardReal; lambda2: StandardReal): BRepApproxMyBSplGradientOfTheComputeLineOfApprox {.
    constructor,
    importcpp: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox(@)",
    header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc isDone*(this: BRepApproxMyBSplGradientOfTheComputeLineOfApprox): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc value*(this: BRepApproxMyBSplGradientOfTheComputeLineOfApprox): AppParCurvesMultiBSpCurve {.
    noSideEffect, importcpp: "Value",
    header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc error*(this: BRepApproxMyBSplGradientOfTheComputeLineOfApprox; index: int): StandardReal {.
    noSideEffect, importcpp: "Error",
    header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc maxError3d*(this: BRepApproxMyBSplGradientOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d",
    header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc maxError2d*(this: BRepApproxMyBSplGradientOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d",
    header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}
proc averageError*(this: BRepApproxMyBSplGradientOfTheComputeLineOfApprox): StandardReal {.
    noSideEffect, importcpp: "AverageError",
    header: "BRepApprox_MyBSplGradientOfTheComputeLineOfApprox.hxx".}