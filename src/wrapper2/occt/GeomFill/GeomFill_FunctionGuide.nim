##  Created on: 1998-07-09
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_XYZ"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Vec"
type
  GeomFillFunctionGuide* {.importcpp: "GeomFill_FunctionGuide",
                          header: "GeomFill_FunctionGuide.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructGeomFillFunctionGuide*(s: Handle[GeomFillSectionLaw];
                                    guide: Handle[Adaptor3dHCurve];
                                    paramOnLaw: StandardReal = 0.0): GeomFillFunctionGuide {.
    constructor, importcpp: "GeomFill_FunctionGuide(@)",
    header: "GeomFill_FunctionGuide.hxx".}
proc setParam*(this: var GeomFillFunctionGuide; param: StandardReal; centre: GpPnt;
              dir: GpXYZ; xDir: GpXYZ) {.importcpp: "SetParam",
                                     header: "GeomFill_FunctionGuide.hxx".}
proc nbVariables*(this: GeomFillFunctionGuide): StandardInteger {.noSideEffect,
    importcpp: "NbVariables", header: "GeomFill_FunctionGuide.hxx".}
proc nbEquations*(this: GeomFillFunctionGuide): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "GeomFill_FunctionGuide.hxx".}
proc value*(this: var GeomFillFunctionGuide; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "GeomFill_FunctionGuide.hxx".}
proc derivatives*(this: var GeomFillFunctionGuide; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "GeomFill_FunctionGuide.hxx".}
proc values*(this: var GeomFillFunctionGuide; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "GeomFill_FunctionGuide.hxx".}
proc derivT*(this: var GeomFillFunctionGuide; x: MathVector; dCentre: GpXYZ;
            dDir: GpXYZ; dfdt: var MathVector): StandardBoolean {.importcpp: "DerivT",
    header: "GeomFill_FunctionGuide.hxx".}
proc deriv2T*(this: var GeomFillFunctionGuide; dCentre: GpXYZ; dDir: GpXYZ;
             dfdt: var MathVector; d2ft: var MathVector): StandardBoolean {.
    importcpp: "Deriv2T", header: "GeomFill_FunctionGuide.hxx".}

