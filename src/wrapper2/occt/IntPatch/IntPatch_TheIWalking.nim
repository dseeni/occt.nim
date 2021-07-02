##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _IntPatch_TheIWalking_HeaderFile [NewLine] # _IntPatch_TheIWalking_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < IntSurf_SequenceOfPathPoint . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < math_Vector . hxx > [NewLine] # < IntWalk_VectorOfWalkingData . hxx > [NewLine] # < IntWalk_VectorOfInteger . hxx > [NewLine] # < IntSurf_PntOn2S . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < gp_Dir2d . hxx > [NewLine] # < TColStd_SequenceOfInteger . hxx > [NewLine] # < TColStd_DataMapOfIntegerListOfInteger . hxx > [NewLine] # < IntPatch_SequenceOfIWLineOfTheIWalking . hxx > [NewLine] # < IntSurf_SequenceOfInteriorPoint . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TColStd_SequenceOfReal . hxx > [NewLine] # < IntWalk_StatusDeflection . hxx > [NewLine] # < Bnd_Range . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IntSurf_PathPoint"
discard "forward decl of IntSurf_PathPointTool"
discard "forward decl of IntSurf_InteriorPoint"
discard "forward decl of IntSurf_InteriorPointTool"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntPatch_TheSurfFunction"
discard "forward decl of IntPatch_TheIWLineOfTheIWalking"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of math_FunctionSetRoot"
type
  IntPatchTheIWalking* {.importcpp: "IntPatch_TheIWalking",
                        header: "IntPatch_TheIWalking.hxx", bycopy.} = object ## !
                                                                         ## Deflection is the maximum
                                                                         ## deflection
                                                                         ## admitted between two
                                                                         ## !
                                                                         ## consecutive points on a
                                                                         ## resulting
                                                                         ## polyline.
                                                                         ## ! Step is the maximum
                                                                         ## increment
                                                                         ## admitted between two
                                                                         ## !
                                                                         ## consecutive points (in 2d space).
                                                                         ## ! Epsilon is the
                                                                         ## tolerance beyond which 2 points
                                                                         ## ! are
                                                                         ## confused.
                                                                         ## !
                                                                         ## theToFillHoles is the flag
                                                                         ## defining whether
                                                                         ## possible holes
                                                                         ## ! between
                                                                         ## resulting curves are filled or not
                                                                         ## ! in case of
                                                                         ## IntPatch walking
                                                                         ## theToFillHoles is False
    ##  Estimated U-range for section curve
    ##  Estimated V-range for section curve


proc constructIntPatchTheIWalking*(epsilon: StandardReal; deflection: StandardReal;
                                  step: StandardReal; theToFillHoles: StandardBoolean = standardFalse): IntPatchTheIWalking {.
    constructor, importcpp: "IntPatch_TheIWalking(@)",
    header: "IntPatch_TheIWalking.hxx".}
proc setTolerance*(this: var IntPatchTheIWalking; epsilon: StandardReal;
                  deflection: StandardReal; step: StandardReal) {.
    importcpp: "SetTolerance", header: "IntPatch_TheIWalking.hxx".}
proc perform*(this: var IntPatchTheIWalking; pnts1: IntSurfSequenceOfPathPoint;
             pnts2: IntSurfSequenceOfInteriorPoint;
             `func`: var IntPatchTheSurfFunction; s: Handle[Adaptor3dHSurface];
             reversed: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "IntPatch_TheIWalking.hxx".}
proc perform*(this: var IntPatchTheIWalking; pnts1: IntSurfSequenceOfPathPoint;
             `func`: var IntPatchTheSurfFunction; s: Handle[Adaptor3dHSurface];
             reversed: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "IntPatch_TheIWalking.hxx".}
proc isDone*(this: IntPatchTheIWalking): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntPatch_TheIWalking.hxx".}
proc nbLines*(this: IntPatchTheIWalking): StandardInteger {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_TheIWalking.hxx".}
proc value*(this: IntPatchTheIWalking; index: StandardInteger): Handle[
    IntPatchTheIWLineOfTheIWalking] {.noSideEffect, importcpp: "Value",
                                     header: "IntPatch_TheIWalking.hxx".}
proc nbSinglePnts*(this: IntPatchTheIWalking): StandardInteger {.noSideEffect,
    importcpp: "NbSinglePnts", header: "IntPatch_TheIWalking.hxx".}
proc singlePnt*(this: IntPatchTheIWalking; index: StandardInteger): IntSurfPathPoint {.
    noSideEffect, importcpp: "SinglePnt", header: "IntPatch_TheIWalking.hxx".}
## !!!Ignored construct:  # ThePointOfPath IntSurf_PathPoint [NewLine] # ThePointOfPath_hxx < IntSurf_PathPoint . hxx > [NewLine] # ThePointOfPathTool IntSurf_PathPointTool [NewLine] # ThePointOfPathTool_hxx < IntSurf_PathPointTool . hxx > [NewLine] # ThePOPIterator IntSurf_SequenceOfPathPoint [NewLine] # ThePOPIterator_hxx < IntSurf_SequenceOfPathPoint . hxx > [NewLine] # ThePointOfLoop IntSurf_InteriorPoint [NewLine] # ThePointOfLoop_hxx < IntSurf_InteriorPoint . hxx > [NewLine] # ThePointOfLoopTool IntSurf_InteriorPointTool [NewLine] # ThePointOfLoopTool_hxx < IntSurf_InteriorPointTool . hxx > [NewLine] # ThePOLIterator IntSurf_SequenceOfInteriorPoint [NewLine] # ThePOLIterator_hxx < IntSurf_SequenceOfInteriorPoint . hxx > [NewLine] # ThePSurface opencascade :: handle < Adaptor3d_HSurface > [end of template] [NewLine] # ThePSurface_hxx < Adaptor3d_HSurface . hxx > [NewLine] # ThePSurfaceTool Adaptor3d_HSurfaceTool [NewLine] # ThePSurfaceTool_hxx < Adaptor3d_HSurfaceTool . hxx > [NewLine] # TheIWFunction IntPatch_TheSurfFunction [NewLine] # TheIWFunction_hxx < IntPatch_TheSurfFunction . hxx > [NewLine] # IntWalk_TheIWLine IntPatch_TheIWLineOfTheIWalking [NewLine] # IntWalk_TheIWLine_hxx < IntPatch_TheIWLineOfTheIWalking . hxx > [NewLine] # IntWalk_SequenceOfIWLine IntPatch_SequenceOfIWLineOfTheIWalking [NewLine] # IntWalk_SequenceOfIWLine_hxx < IntPatch_SequenceOfIWLineOfTheIWalking . hxx > [NewLine] # Handle_IntWalk_TheIWLine opencascade :: handle < IntPatch_TheIWLineOfTheIWalking > [end of template] [NewLine] # IntWalk_IWalking IntPatch_TheIWalking [NewLine] # IntWalk_IWalking_hxx < IntPatch_TheIWalking . hxx > [NewLine] # < IntWalk_IWalking . lxx > [NewLine] # ThePointOfPath [NewLine] # ThePointOfPath_hxx [NewLine] # ThePointOfPathTool [NewLine] # ThePointOfPathTool_hxx [NewLine] # ThePOPIterator [NewLine] # ThePOPIterator_hxx [NewLine] # ThePointOfLoop [NewLine] # ThePointOfLoop_hxx [NewLine] # ThePointOfLoopTool [NewLine] # ThePointOfLoopTool_hxx [NewLine] # ThePOLIterator [NewLine] # ThePOLIterator_hxx [NewLine] # ThePSurface [NewLine] # ThePSurface_hxx [NewLine] # ThePSurfaceTool [NewLine] # ThePSurfaceTool_hxx [NewLine] # TheIWFunction [NewLine] # TheIWFunction_hxx [NewLine] # IntWalk_TheIWLine [NewLine] # IntWalk_TheIWLine_hxx [NewLine] # IntWalk_SequenceOfIWLine [NewLine] # IntWalk_SequenceOfIWLine_hxx [NewLine] # Handle_IntWalk_TheIWLine [NewLine] # IntWalk_IWalking [NewLine] # IntWalk_IWalking_hxx [NewLine] #  _IntPatch_TheIWalking_HeaderFile
## Error: did not expect <!!!


