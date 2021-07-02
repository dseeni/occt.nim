##  Created on: 1991-03-28
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _IntWalk_TheFunctionOfTheInt2S_HeaderFile [NewLine] # _IntWalk_TheFunctionOfTheInt2S_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Address . hxx > [NewLine] # < gp_Pnt . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < IntImp_ConstIsoparametric . hxx > [NewLine] # < math_FunctionSetWithDerivatives . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < math_Vector . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < gp_Dir . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] class StdFail_UndefinedDerivative ;
## Error: did not expect <!!!

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of math_Matrix"
type
  IntWalkTheFunctionOfTheInt2S* {.importcpp: "IntWalk_TheFunctionOfTheInt2S",
                                 header: "IntWalk_TheFunctionOfTheInt2S.hxx",
                                 bycopy.} = object of MathFunctionSetWithDerivatives


proc constructIntWalkTheFunctionOfTheInt2S*(s1: Handle[Adaptor3dHSurface];
    s2: Handle[Adaptor3dHSurface]): IntWalkTheFunctionOfTheInt2S {.constructor,
    importcpp: "IntWalk_TheFunctionOfTheInt2S(@)",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc nbVariables*(this: IntWalkTheFunctionOfTheInt2S): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc nbEquations*(this: IntWalkTheFunctionOfTheInt2S): StandardInteger {.
    noSideEffect, importcpp: "NbEquations",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc value*(this: var IntWalkTheFunctionOfTheInt2S; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc derivatives*(this: var IntWalkTheFunctionOfTheInt2S; x: MathVector;
                 d: var MathMatrix): StandardBoolean {.importcpp: "Derivatives",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc values*(this: var IntWalkTheFunctionOfTheInt2S; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc computeParameters*(this: var IntWalkTheFunctionOfTheInt2S;
                       choixIso: IntImpConstIsoparametric;
                       param: TColStdArray1OfReal; uVap: var MathVector;
                       bornInf: var MathVector; bornSup: var MathVector;
                       tolerance: var MathVector) {.importcpp: "ComputeParameters",
    header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc root*(this: IntWalkTheFunctionOfTheInt2S): StandardReal {.noSideEffect,
    importcpp: "Root", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc point*(this: IntWalkTheFunctionOfTheInt2S): GpPnt {.noSideEffect,
    importcpp: "Point", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc isTangent*(this: var IntWalkTheFunctionOfTheInt2S; uVap: MathVector;
               param: var TColStdArray1OfReal;
               bestChoix: var IntImpConstIsoparametric): StandardBoolean {.
    importcpp: "IsTangent", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc direction*(this: IntWalkTheFunctionOfTheInt2S): GpDir {.noSideEffect,
    importcpp: "Direction", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc directionOnS1*(this: IntWalkTheFunctionOfTheInt2S): GpDir2d {.noSideEffect,
    importcpp: "DirectionOnS1", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc directionOnS2*(this: IntWalkTheFunctionOfTheInt2S): GpDir2d {.noSideEffect,
    importcpp: "DirectionOnS2", header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc auxillarSurface1*(this: IntWalkTheFunctionOfTheInt2S): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "AuxillarSurface1",
                        header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
proc auxillarSurface2*(this: IntWalkTheFunctionOfTheInt2S): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "AuxillarSurface2",
                        header: "IntWalk_TheFunctionOfTheInt2S.hxx".}
## !!!Ignored construct:  # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntImp_ZerParFunc IntWalk_TheFunctionOfTheInt2S [NewLine] # IntImp_ZerParFunc_hxx < IntWalk_TheFunctionOfTheInt2S . hxx > [NewLine] # < IntImp_ZerParFunc . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_ZerParFunc [NewLine] # IntImp_ZerParFunc_hxx [NewLine] #  _IntWalk_TheFunctionOfTheInt2S_HeaderFile
## Error: did not expect <!!!


