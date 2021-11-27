##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Anand NATRAJAN)
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

discard "forward decl of IGESDimen_DimensionTolerance"
discard "forward decl of IGESDimen_DimensionTolerance"
type
  HandleC1C1* = Handle[IGESDimenDimensionTolerance]

## ! defines Dimension Tolerance, Type <406>, Form <29>
## ! in package IGESDimen
## ! Provides tolerance information for a dimension which
## ! can be used by the receiving system to regenerate the
## ! dimension.

type
  IGESDimenDimensionTolerance* {.importcpp: "IGESDimen_DimensionTolerance",
                                header: "IGESDimen_DimensionTolerance.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenDimensionTolerance*(): IGESDimenDimensionTolerance {.
    constructor, importcpp: "IGESDimen_DimensionTolerance(@)",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc init*(this: var IGESDimenDimensionTolerance; nbPropVal: cint; aSecTolFlag: cint;
          aTolType: cint; aTolPlaceFlag: cint; anUpperTol: cfloat; aLowerTol: cfloat;
          aSignFlag: bool; aFracFlag: cint; aPrecision: cint) {.importcpp: "Init",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc nbPropertyValues*(this: IGESDimenDimensionTolerance): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESDimen_DimensionTolerance.hxx".}
proc secondaryToleranceFlag*(this: IGESDimenDimensionTolerance): cint {.
    noSideEffect, importcpp: "SecondaryToleranceFlag",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc toleranceType*(this: IGESDimenDimensionTolerance): cint {.noSideEffect,
    importcpp: "ToleranceType", header: "IGESDimen_DimensionTolerance.hxx".}
proc tolerancePlacementFlag*(this: IGESDimenDimensionTolerance): cint {.
    noSideEffect, importcpp: "TolerancePlacementFlag",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc upperTolerance*(this: IGESDimenDimensionTolerance): cfloat {.noSideEffect,
    importcpp: "UpperTolerance", header: "IGESDimen_DimensionTolerance.hxx".}
proc lowerTolerance*(this: IGESDimenDimensionTolerance): cfloat {.noSideEffect,
    importcpp: "LowerTolerance", header: "IGESDimen_DimensionTolerance.hxx".}
proc signSuppressionFlag*(this: IGESDimenDimensionTolerance): bool {.noSideEffect,
    importcpp: "SignSuppressionFlag", header: "IGESDimen_DimensionTolerance.hxx".}
proc fractionFlag*(this: IGESDimenDimensionTolerance): cint {.noSideEffect,
    importcpp: "FractionFlag", header: "IGESDimen_DimensionTolerance.hxx".}
proc precision*(this: IGESDimenDimensionTolerance): cint {.noSideEffect,
    importcpp: "Precision", header: "IGESDimen_DimensionTolerance.hxx".}
type
  IGESDimenDimensionTolerancebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_DimensionTolerance::get_type_name(@)",
                            header: "IGESDimen_DimensionTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_DimensionTolerance::get_type_descriptor(@)",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc dynamicType*(this: IGESDimenDimensionTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_DimensionTolerance.hxx".}
























