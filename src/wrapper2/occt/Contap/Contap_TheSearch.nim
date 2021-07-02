##  Created on: 1993-02-05
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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

## !!!Ignored construct:  # _Contap_TheSearch_HeaderFile [NewLine] # _Contap_TheSearch_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Contap_SequenceOfSegmentOfTheSearch . hxx > [NewLine] # < Contap_SequenceOfPathPointOfTheSearch . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Contap_HCurve2dTool"
discard "forward decl of Contap_HContTool"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of Contap_ArcFunction"
discard "forward decl of Contap_ThePathPointOfTheSearch"
discard "forward decl of Contap_TheSegmentOfTheSearch"
type
  ContapTheSearch* {.importcpp: "Contap_TheSearch", header: "Contap_TheSearch.hxx",
                    bycopy.} = object ## ! Empty constructor.


proc constructContapTheSearch*(): ContapTheSearch {.constructor,
    importcpp: "Contap_TheSearch(@)", header: "Contap_TheSearch.hxx".}
proc perform*(this: var ContapTheSearch; f: var ContapArcFunction;
             domain: Handle[Adaptor3dTopolTool]; tolBoundary: StandardReal;
             tolTangency: StandardReal;
             recheckOnRegularity: StandardBoolean = standardFalse) {.
    importcpp: "Perform", header: "Contap_TheSearch.hxx".}
proc isDone*(this: ContapTheSearch): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Contap_TheSearch.hxx".}
proc allArcSolution*(this: ContapTheSearch): StandardBoolean {.noSideEffect,
    importcpp: "AllArcSolution", header: "Contap_TheSearch.hxx".}
proc nbPoints*(this: ContapTheSearch): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "Contap_TheSearch.hxx".}
proc point*(this: ContapTheSearch; index: StandardInteger): ContapThePathPointOfTheSearch {.
    noSideEffect, importcpp: "Point", header: "Contap_TheSearch.hxx".}
proc nbSegments*(this: ContapTheSearch): StandardInteger {.noSideEffect,
    importcpp: "NbSegments", header: "Contap_TheSearch.hxx".}
proc segment*(this: ContapTheSearch; index: StandardInteger): ContapTheSegmentOfTheSearch {.
    noSideEffect, importcpp: "Segment", header: "Contap_TheSearch.hxx".}
## !!!Ignored construct:  # TheVertex opencascade :: handle < Adaptor3d_HVertex > [end of template] [NewLine] # TheVertex_hxx < Adaptor3d_HVertex . hxx > [NewLine] # TheArc opencascade :: handle < Adaptor2d_HCurve2d > [end of template] [NewLine] # TheArc_hxx < Adaptor2d_HCurve2d . hxx > [NewLine] # TheArcTool Contap_HCurve2dTool [NewLine] # TheArcTool_hxx < Contap_HCurve2dTool . hxx > [NewLine] # TheSOBTool Contap_HContTool [NewLine] # TheSOBTool_hxx < Contap_HContTool . hxx > [NewLine] # Handle_TheTopolTool opencascade :: handle < Adaptor3d_TopolTool > [end of template] [NewLine] # TheTopolTool Adaptor3d_TopolTool [NewLine] # TheTopolTool_hxx < Adaptor3d_TopolTool . hxx > [NewLine] # TheFunction Contap_ArcFunction [NewLine] # TheFunction_hxx < Contap_ArcFunction . hxx > [NewLine] # IntStart_ThePathPoint Contap_ThePathPointOfTheSearch [NewLine] # IntStart_ThePathPoint_hxx < Contap_ThePathPointOfTheSearch . hxx > [NewLine] # IntStart_SequenceOfPathPoint Contap_SequenceOfPathPointOfTheSearch [NewLine] # IntStart_SequenceOfPathPoint_hxx < Contap_SequenceOfPathPointOfTheSearch . hxx > [NewLine] # IntStart_TheSegment Contap_TheSegmentOfTheSearch [NewLine] # IntStart_TheSegment_hxx < Contap_TheSegmentOfTheSearch . hxx > [NewLine] # IntStart_SequenceOfSegment Contap_SequenceOfSegmentOfTheSearch [NewLine] # IntStart_SequenceOfSegment_hxx < Contap_SequenceOfSegmentOfTheSearch . hxx > [NewLine] # IntStart_SearchOnBoundaries Contap_TheSearch [NewLine] # IntStart_SearchOnBoundaries_hxx < Contap_TheSearch . hxx > [NewLine] # < IntStart_SearchOnBoundaries . lxx > [NewLine] # TheVertex [NewLine] # TheVertex_hxx [NewLine] # TheArc [NewLine] # TheArc_hxx [NewLine] # TheArcTool [NewLine] # TheArcTool_hxx [NewLine] # TheSOBTool [NewLine] # TheSOBTool_hxx [NewLine] # Handle_TheTopolTool [NewLine] # TheTopolTool [NewLine] # TheTopolTool_hxx [NewLine] # TheFunction [NewLine] # TheFunction_hxx [NewLine] # IntStart_ThePathPoint [NewLine] # IntStart_ThePathPoint_hxx [NewLine] # IntStart_SequenceOfPathPoint [NewLine] # IntStart_SequenceOfPathPoint_hxx [NewLine] # IntStart_TheSegment [NewLine] # IntStart_TheSegment_hxx [NewLine] # IntStart_SequenceOfSegment [NewLine] # IntStart_SequenceOfSegment_hxx [NewLine] # IntStart_SearchOnBoundaries [NewLine] # IntStart_SearchOnBoundaries_hxx [NewLine] #  _Contap_TheSearch_HeaderFile
## Error: did not expect <!!!


