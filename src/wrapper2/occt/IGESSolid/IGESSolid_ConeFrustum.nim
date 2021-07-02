##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_ConeFrustum"
discard "forward decl of IGESSolid_ConeFrustum"
type
  HandleIGESSolidConeFrustum* = Handle[IGESSolidConeFrustum]

## ! defines ConeFrustum, Type <156> Form Number <0>
## ! in package IGESSolid
## ! The Cone Frustum is defined by the center of the
## ! larger circular face of the frustum, its radius, a unit
## ! vector in the axis direction, a height in this direction
## ! and a second circular face with radius which is lesser
## ! than the first face.

type
  IGESSolidConeFrustum* {.importcpp: "IGESSolid_ConeFrustum",
                         header: "IGESSolid_ConeFrustum.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidConeFrustum*(): IGESSolidConeFrustum {.constructor,
    importcpp: "IGESSolid_ConeFrustum(@)", header: "IGESSolid_ConeFrustum.hxx".}
proc init*(this: var IGESSolidConeFrustum; ht: StandardReal; r1: StandardReal;
          r2: StandardReal; center: GpXYZ; anAxis: GpXYZ) {.importcpp: "Init",
    header: "IGESSolid_ConeFrustum.hxx".}
proc height*(this: IGESSolidConeFrustum): StandardReal {.noSideEffect,
    importcpp: "Height", header: "IGESSolid_ConeFrustum.hxx".}
proc largerRadius*(this: IGESSolidConeFrustum): StandardReal {.noSideEffect,
    importcpp: "LargerRadius", header: "IGESSolid_ConeFrustum.hxx".}
proc smallerRadius*(this: IGESSolidConeFrustum): StandardReal {.noSideEffect,
    importcpp: "SmallerRadius", header: "IGESSolid_ConeFrustum.hxx".}
proc faceCenter*(this: IGESSolidConeFrustum): GpPnt {.noSideEffect,
    importcpp: "FaceCenter", header: "IGESSolid_ConeFrustum.hxx".}
proc transformedFaceCenter*(this: IGESSolidConeFrustum): GpPnt {.noSideEffect,
    importcpp: "TransformedFaceCenter", header: "IGESSolid_ConeFrustum.hxx".}
proc axis*(this: IGESSolidConeFrustum): GpDir {.noSideEffect, importcpp: "Axis",
    header: "IGESSolid_ConeFrustum.hxx".}
proc transformedAxis*(this: IGESSolidConeFrustum): GpDir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESSolid_ConeFrustum.hxx".}
type
  IGESSolidConeFrustumbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_ConeFrustum::get_type_name(@)",
                            header: "IGESSolid_ConeFrustum.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_ConeFrustum::get_type_descriptor(@)",
    header: "IGESSolid_ConeFrustum.hxx".}
proc dynamicType*(this: IGESSolidConeFrustum): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_ConeFrustum.hxx".}

