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

## !!!Ignored construct:  # _IntWalk_TheInt2S_HeaderFile [NewLine] # _IntWalk_TheInt2S_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < IntSurf_PntOn2S . hxx > [NewLine] # < gp_Dir . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] # < IntWalk_TheFunctionOfTheInt2S . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < IntImp_ConstIsoparametric . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntWalk_TheFunctionOfTheInt2S"
discard "forward decl of math_FunctionSetRoot"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Dir2d"
type
  IntWalkTheInt2S* {.importcpp: "IntWalk_TheInt2S", header: "IntWalk_TheInt2S.hxx",
                    bycopy.} = object ## ! compute the solution point with the close point


## !!!Ignored construct:  public : ! compute the solution point with the close point IntWalk_TheInt2S ( const TColStd_Array1OfReal & Param , const Handle ( Adaptor3d_HSurface ) & S1 , const Handle ( Adaptor3d_HSurface ) & S2 , const Standard_Real TolTangency ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! initialize the parameters to compute the solution point
## ! it 's possible to write to optimize:
## ! IntImp_Int2S inter(S1,S2,Func,TolTangency);
## ! math_FunctionSetRoot rsnld(inter.Function());
## ! while ...{
## ! Param(1)=...
## ! Param(2)=...
## ! param(3)=...
## ! inter.Perform(Param,rsnld);
## ! } IntWalk_TheInt2S ( const Handle ( Adaptor3d_HSurface ) & S1 , const Handle ( Adaptor3d_HSurface ) & S2 , const Standard_Real TolTangency ) ;
## Error: token expected: ) but got: &!!!

proc perform*(this: var IntWalkTheInt2S; param: TColStdArray1OfReal;
             rsnld: var MathFunctionSetRoot): IntImpConstIsoparametric {.
    importcpp: "Perform", header: "IntWalk_TheInt2S.hxx".}
proc perform*(this: var IntWalkTheInt2S; param: TColStdArray1OfReal;
             rsnld: var MathFunctionSetRoot; choixIso: IntImpConstIsoparametric): IntImpConstIsoparametric {.
    importcpp: "Perform", header: "IntWalk_TheInt2S.hxx".}
proc isDone*(this: IntWalkTheInt2S): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "IntWalk_TheInt2S.hxx".}
proc isEmpty*(this: IntWalkTheInt2S): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "IntWalk_TheInt2S.hxx".}
proc point*(this: IntWalkTheInt2S): IntSurfPntOn2S {.noSideEffect,
    importcpp: "Point", header: "IntWalk_TheInt2S.hxx".}
proc isTangent*(this: IntWalkTheInt2S): bool {.noSideEffect, importcpp: "IsTangent",
    header: "IntWalk_TheInt2S.hxx".}
proc direction*(this: IntWalkTheInt2S): Dir {.noSideEffect, importcpp: "Direction",
    header: "IntWalk_TheInt2S.hxx".}
proc directionOnS1*(this: IntWalkTheInt2S): Dir2d {.noSideEffect,
    importcpp: "DirectionOnS1", header: "IntWalk_TheInt2S.hxx".}
proc directionOnS2*(this: IntWalkTheInt2S): Dir2d {.noSideEffect,
    importcpp: "DirectionOnS2", header: "IntWalk_TheInt2S.hxx".}
proc function*(this: var IntWalkTheInt2S): var IntWalkTheFunctionOfTheInt2S {.
    importcpp: "Function", header: "IntWalk_TheInt2S.hxx".}
proc changePoint*(this: var IntWalkTheInt2S): var IntSurfPntOn2S {.
    importcpp: "ChangePoint", header: "IntWalk_TheInt2S.hxx".}
## !!!Ignored construct:  # ThePSurface Handle ( Adaptor3d_HSurface ) [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # IntImp_TheFunction IntWalk_TheFunctionOfTheInt2S [NewLine] # IntImp_TheFunction_hxx < IntWalk_TheFunctionOfTheInt2S . hxx > [NewLine] # IntImp_Int2S IntWalk_TheInt2S [NewLine] # IntImp_Int2S_hxx < IntWalk_TheInt2S . hxx > [NewLine] # < IntImp_Int2S . lxx > [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # IntImp_TheFunction [NewLine] # IntImp_TheFunction_hxx [NewLine] # IntImp_Int2S [NewLine] # IntImp_Int2S_hxx [NewLine] #  _IntWalk_TheInt2S_HeaderFile
## Error: did not expect <!!!














































