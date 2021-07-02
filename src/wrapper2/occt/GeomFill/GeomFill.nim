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

discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_Filling"
discard "forward decl of GeomFill_Stretch"
discard "forward decl of GeomFill_Coons"
discard "forward decl of GeomFill_Curved"
discard "forward decl of GeomFill_BezierCurves"
discard "forward decl of GeomFill_BSplineCurves"
discard "forward decl of GeomFill_Profiler"
discard "forward decl of GeomFill_SectionGenerator"
discard "forward decl of GeomFill_Line"
discard "forward decl of GeomFill_AppSurf"
discard "forward decl of GeomFill_SweepSectionGenerator"
discard "forward decl of GeomFill_AppSweep"
discard "forward decl of GeomFill_Generator"
discard "forward decl of GeomFill_Pipe"
discard "forward decl of GeomFill_Tensor"
discard "forward decl of GeomFill_ConstrainedFilling"
discard "forward decl of GeomFill_Boundary"
discard "forward decl of GeomFill_DegeneratedBound"
discard "forward decl of GeomFill_SimpleBound"
discard "forward decl of GeomFill_BoundWithSurf"
discard "forward decl of GeomFill_CoonsAlgPatch"
discard "forward decl of GeomFill_TgtField"
discard "forward decl of GeomFill_TgtOnCoons"
discard "forward decl of GeomFill_CornerState"
discard "forward decl of GeomFill_CircularBlendFunc"
discard "forward decl of GeomFill_SweepFunction"
discard "forward decl of GeomFill_LocFunction"
discard "forward decl of GeomFill_PolynomialConvertor"
discard "forward decl of GeomFill_QuasiAngularConvertor"
discard "forward decl of GeomFill_SnglrFunc"
discard "forward decl of GeomFill_FunctionDraft"
discard "forward decl of GeomFill_PlanFunc"
discard "forward decl of GeomFill_FunctionGuide"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of GeomFill_UniformSection"
discard "forward decl of GeomFill_EvolvedSection"
discard "forward decl of GeomFill_NSections"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_CurveAndTrihedron"
discard "forward decl of GeomFill_LocationDraft"
discard "forward decl of GeomFill_LocationGuide"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of GeomFill_Fixed"
discard "forward decl of GeomFill_Frenet"
discard "forward decl of GeomFill_CorrectedFrenet"
discard "forward decl of GeomFill_DiscreteTrihedron"
discard "forward decl of GeomFill_ConstantBiNormal"
discard "forward decl of GeomFill_Darboux"
discard "forward decl of GeomFill_DraftTrihedron"
discard "forward decl of GeomFill_TrihedronWithGuide"
discard "forward decl of GeomFill_GuideTrihedronAC"
discard "forward decl of GeomFill_GuideTrihedronPlan"
discard "forward decl of GeomFill_Sweep"
discard "forward decl of GeomFill_SectionPlacement"
type
  GeomFill* {.importcpp: "GeomFill", header: "GeomFill.hxx", bycopy.} = object ## ! Builds a ruled surface between the two curves, Curve1 and Curve2.


proc surface*(curve1: Handle[GeomCurve]; curve2: Handle[GeomCurve]): Handle[
    GeomSurface] {.importcpp: "GeomFill::Surface(@)", header: "GeomFill.hxx".}
proc getCircle*(tConv: ConvertParameterisationType; ns1: GpVec; ns2: GpVec;
               nplan: GpVec; pt1: GpPnt; pt2: GpPnt; rayon: StandardReal; center: GpPnt;
               poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal) {.
    importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc getCircle*(tConv: ConvertParameterisationType; ns1: GpVec; ns2: GpVec;
               dn1w: GpVec; dn2w: GpVec; nplan: GpVec; dnplan: GpVec; pts1: GpPnt;
               pts2: GpPnt; tang1: GpVec; tang2: GpVec; rayon: StandardReal;
               dRayon: StandardReal; center: GpPnt; dCenter: GpVec;
               poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
               weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc getCircle*(tConv: ConvertParameterisationType; ns1: GpVec; ns2: GpVec;
               dn1w: GpVec; dn2w: GpVec; d2n1w: GpVec; d2n2w: GpVec; nplan: GpVec;
               dnplan: GpVec; d2nplan: GpVec; pts1: GpPnt; pts2: GpPnt; tang1: GpVec;
               tang2: GpVec; dtang1: GpVec; dtang2: GpVec; rayon: StandardReal;
               dRayon: StandardReal; d2Rayon: StandardReal; center: GpPnt;
               dCenter: GpVec; d2Center: GpVec; poles: var TColgpArray1OfPnt;
               dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
               weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
               d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "GeomFill::GetCircle(@)", header: "GeomFill.hxx".}
proc getShape*(maxAng: StandardReal; nbPoles: var StandardInteger;
              nbKnots: var StandardInteger; degree: var StandardInteger;
              typeConv: var ConvertParameterisationType) {.
    importcpp: "GeomFill::GetShape(@)", header: "GeomFill.hxx".}
proc knots*(typeConv: ConvertParameterisationType; tKnots: var TColStdArray1OfReal) {.
    importcpp: "GeomFill::Knots(@)", header: "GeomFill.hxx".}
proc mults*(typeConv: ConvertParameterisationType;
           tMults: var TColStdArray1OfInteger) {.importcpp: "GeomFill::Mults(@)",
    header: "GeomFill.hxx".}
proc getMinimalWeights*(tConv: ConvertParameterisationType; angleMin: StandardReal;
                       angleMax: StandardReal; weigths: var TColStdArray1OfReal) {.
    importcpp: "GeomFill::GetMinimalWeights(@)", header: "GeomFill.hxx".}
proc getTolerance*(tConv: ConvertParameterisationType; angleMin: StandardReal;
                  radius: StandardReal; angularTol: StandardReal;
                  spatialTol: StandardReal): StandardReal {.
    importcpp: "GeomFill::GetTolerance(@)", header: "GeomFill.hxx".}

