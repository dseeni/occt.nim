##  Created on: 2000-05-22
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of ShapeCustom_RestrictionParameters"
discard "forward decl of ShapeCustom_RestrictionParameters"
type
  HandleShapeCustomRestrictionParameters* = Handle[
      ShapeCustomRestrictionParameters]

## ! This class is axuluary tool which contains parameters for
## ! BSplineRestriction class.

type
  ShapeCustomRestrictionParameters* {.importcpp: "ShapeCustom_RestrictionParameters", header: "ShapeCustom_RestrictionParameters.hxx",
                                     bycopy.} = object of StandardTransient ## ! Sets default
                                                                       ## parameters.


proc constructShapeCustomRestrictionParameters*(): ShapeCustomRestrictionParameters {.
    constructor, importcpp: "ShapeCustom_RestrictionParameters(@)",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc gMaxDegree*(this: var ShapeCustomRestrictionParameters): var StandardInteger {.
    importcpp: "GMaxDegree", header: "ShapeCustom_RestrictionParameters.hxx".}
proc gMaxSeg*(this: var ShapeCustomRestrictionParameters): var StandardInteger {.
    importcpp: "GMaxSeg", header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertPlane*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertPlane", header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertBezierSurf*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertBezierSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertRevolutionSurf*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertRevolutionSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertExtrusionSurf*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertExtrusionSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertOffsetSurf*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertOffsetSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertCylindricalSurf*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertCylindricalSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertConicalSurf*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertConicalSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertToroidalSurf*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertToroidalSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertSphericalSurf*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertSphericalSurf",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc segmentSurfaceMode*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "SegmentSurfaceMode",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertCurve3d*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertCurve3d", header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertOffsetCurv3d*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertOffsetCurv3d",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertCurve2d*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertCurve2d", header: "ShapeCustom_RestrictionParameters.hxx".}
proc convertOffsetCurv2d*(this: var ShapeCustomRestrictionParameters): var StandardBoolean {.
    importcpp: "ConvertOffsetCurv2d",
    header: "ShapeCustom_RestrictionParameters.hxx".}
type
  ShapeCustomRestrictionParametersbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeCustom_RestrictionParameters::get_type_name(@)",
                            header: "ShapeCustom_RestrictionParameters.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeCustom_RestrictionParameters::get_type_descriptor(@)",
    header: "ShapeCustom_RestrictionParameters.hxx".}
proc dynamicType*(this: ShapeCustomRestrictionParameters): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeCustom_RestrictionParameters.hxx".}

