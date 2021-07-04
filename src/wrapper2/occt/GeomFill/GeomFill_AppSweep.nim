##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
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

## !!!Ignored construct:  # _GeomFill_AppSweep_HeaderFile [NewLine] # _GeomFill_AppSweep_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TColgp/TColgp_HArray2OfPnt.hxx [NewLine] # ../TColStd/TColStd_HArray2OfReal.hxx [NewLine] # ../TColStd/TColStd_HArray1OfReal.hxx [NewLine] # ../TColStd/TColStd_HArray1OfInteger.hxx [NewLine] # ../TColgp/TColgp_SequenceOfArray1OfPnt2d.hxx [NewLine] # ../Approx/Approx_ParametrizationType.hxx [NewLine] # ../GeomAbs/GeomAbs_Shape.hxx [NewLine] # ../AppBlend/AppBlend_Approx.hxx [NewLine] # ../TColgp/TColgp_Array2OfPnt.hxx [NewLine] # ../TColStd/TColStd_Array2OfReal.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../TColStd/TColStd_Array1OfInteger.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt2d.hxx [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GeomFill_SweepSectionGenerator"
discard "forward decl of GeomFill_Line"
type
  GeomFill_AppSweep* {.importcpp: "GeomFill_AppSweep",
                      header: "GeomFill_AppSweep.hxx", bycopy.} = object of AppBlend_Approx


proc constructGeomFill_AppSweep*(): GeomFill_AppSweep {.constructor,
    importcpp: "GeomFill_AppSweep(@)", header: "GeomFill_AppSweep.hxx".}
proc constructGeomFill_AppSweep*(Degmin: Standard_Integer;
                                Degmax: Standard_Integer; Tol3d: Standard_Real;
                                Tol2d: Standard_Real; NbIt: Standard_Integer;
    KnownParameters: Standard_Boolean = Standard_False): GeomFill_AppSweep {.
    constructor, importcpp: "GeomFill_AppSweep(@)", header: "GeomFill_AppSweep.hxx".}
proc Init*(this: var GeomFill_AppSweep; Degmin: Standard_Integer;
          Degmax: Standard_Integer; Tol3d: Standard_Real; Tol2d: Standard_Real;
          NbIt: Standard_Integer;
          KnownParameters: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "GeomFill_AppSweep.hxx".}
proc SetParType*(this: var GeomFill_AppSweep; ParType: Approx_ParametrizationType) {.
    importcpp: "SetParType", header: "GeomFill_AppSweep.hxx".}
proc SetContinuity*(this: var GeomFill_AppSweep; C: GeomAbs_Shape) {.
    importcpp: "SetContinuity", header: "GeomFill_AppSweep.hxx".}
proc SetCriteriumWeight*(this: var GeomFill_AppSweep; W1: Standard_Real;
                        W2: Standard_Real; W3: Standard_Real) {.
    importcpp: "SetCriteriumWeight", header: "GeomFill_AppSweep.hxx".}
proc ParType*(this: GeomFill_AppSweep): Approx_ParametrizationType {.noSideEffect,
    importcpp: "ParType", header: "GeomFill_AppSweep.hxx".}
proc Continuity*(this: GeomFill_AppSweep): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "GeomFill_AppSweep.hxx".}
proc CriteriumWeight*(this: GeomFill_AppSweep; W1: var Standard_Real;
                     W2: var Standard_Real; W3: var Standard_Real) {.noSideEffect,
    importcpp: "CriteriumWeight", header: "GeomFill_AppSweep.hxx".}
proc Perform*(this: var GeomFill_AppSweep; Lin: handle[GeomFill_Line];
             SecGen: var GeomFill_SweepSectionGenerator;
             SpApprox: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "GeomFill_AppSweep.hxx".}
proc PerformSmoothing*(this: var GeomFill_AppSweep; Lin: handle[GeomFill_Line];
                      SecGen: var GeomFill_SweepSectionGenerator) {.
    importcpp: "PerformSmoothing", header: "GeomFill_AppSweep.hxx".}
proc Perform*(this: var GeomFill_AppSweep; Lin: handle[GeomFill_Line];
             SecGen: var GeomFill_SweepSectionGenerator; NbMaxP: Standard_Integer) {.
    importcpp: "Perform", header: "GeomFill_AppSweep.hxx".}
proc IsDone*(this: GeomFill_AppSweep): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomFill_AppSweep.hxx".}
proc SurfShape*(this: GeomFill_AppSweep; UDegree: var Standard_Integer;
               VDegree: var Standard_Integer; NbUPoles: var Standard_Integer;
               NbVPoles: var Standard_Integer; NbUKnots: var Standard_Integer;
               NbVKnots: var Standard_Integer) {.noSideEffect,
    importcpp: "SurfShape", header: "GeomFill_AppSweep.hxx".}
proc Surface*(this: GeomFill_AppSweep; TPoles: var TColgp_Array2OfPnt;
             TWeights: var TColStd_Array2OfReal; TUKnots: var TColStd_Array1OfReal;
             TVKnots: var TColStd_Array1OfReal;
             TUMults: var TColStd_Array1OfInteger;
             TVMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_AppSweep.hxx".}
proc UDegree*(this: GeomFill_AppSweep): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "GeomFill_AppSweep.hxx".}
proc VDegree*(this: GeomFill_AppSweep): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "GeomFill_AppSweep.hxx".}
proc SurfPoles*(this: GeomFill_AppSweep): TColgp_Array2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "GeomFill_AppSweep.hxx".}
proc SurfWeights*(this: GeomFill_AppSweep): TColStd_Array2OfReal {.noSideEffect,
    importcpp: "SurfWeights", header: "GeomFill_AppSweep.hxx".}
proc SurfUKnots*(this: GeomFill_AppSweep): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "SurfUKnots", header: "GeomFill_AppSweep.hxx".}
proc SurfVKnots*(this: GeomFill_AppSweep): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "SurfVKnots", header: "GeomFill_AppSweep.hxx".}
proc SurfUMults*(this: GeomFill_AppSweep): TColStd_Array1OfInteger {.noSideEffect,
    importcpp: "SurfUMults", header: "GeomFill_AppSweep.hxx".}
proc SurfVMults*(this: GeomFill_AppSweep): TColStd_Array1OfInteger {.noSideEffect,
    importcpp: "SurfVMults", header: "GeomFill_AppSweep.hxx".}
proc NbCurves2d*(this: GeomFill_AppSweep): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves2d", header: "GeomFill_AppSweep.hxx".}
proc Curves2dShape*(this: GeomFill_AppSweep; Degree: var Standard_Integer;
                   NbPoles: var Standard_Integer; NbKnots: var Standard_Integer) {.
    noSideEffect, importcpp: "Curves2dShape", header: "GeomFill_AppSweep.hxx".}
proc Curve2d*(this: GeomFill_AppSweep; Index: Standard_Integer;
             TPoles: var TColgp_Array1OfPnt2d; TKnots: var TColStd_Array1OfReal;
             TMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Curve2d", header: "GeomFill_AppSweep.hxx".}
proc Curves2dDegree*(this: GeomFill_AppSweep): Standard_Integer {.noSideEffect,
    importcpp: "Curves2dDegree", header: "GeomFill_AppSweep.hxx".}
proc Curve2dPoles*(this: GeomFill_AppSweep; Index: Standard_Integer): TColgp_Array1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles", header: "GeomFill_AppSweep.hxx".}
proc Curves2dKnots*(this: GeomFill_AppSweep): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Curves2dKnots", header: "GeomFill_AppSweep.hxx".}
proc Curves2dMults*(this: GeomFill_AppSweep): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Curves2dMults", header: "GeomFill_AppSweep.hxx".}
proc TolReached*(this: GeomFill_AppSweep; Tol3d: var Standard_Real;
                Tol2d: var Standard_Real) {.noSideEffect, importcpp: "TolReached",
    header: "GeomFill_AppSweep.hxx".}
proc TolCurveOnSurf*(this: GeomFill_AppSweep; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "TolCurveOnSurf", header: "GeomFill_AppSweep.hxx".}
## !!!Ignored construct:  # TheSectionGenerator GeomFill_SweepSectionGenerator [NewLine] # TheSectionGenerator_hxx < GeomFill_SweepSectionGenerator . hxx > [NewLine] # Handle_TheLine opencascade :: handle < GeomFill_Line > [end of template] [NewLine] # TheLine GeomFill_Line [NewLine] # TheLine_hxx < GeomFill_Line . hxx > [NewLine] # AppBlend_AppSurf GeomFill_AppSweep [NewLine] # AppBlend_AppSurf_hxx < GeomFill_AppSweep . hxx > [NewLine] # < AppBlend_AppSurf . lxx > [NewLine] # TheSectionGenerator [NewLine] # TheSectionGenerator_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # AppBlend_AppSurf [NewLine] # AppBlend_AppSurf_hxx [NewLine] #  _GeomFill_AppSweep_HeaderFile [NewLine]
## Error: did not expect <!!!
