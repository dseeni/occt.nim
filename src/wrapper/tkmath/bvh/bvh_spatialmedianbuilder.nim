import bvh_types

##  Created on: 2013-12-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Performs building of BVH tree using spatial median split algorithm.



proc newBVH_SpatialMedianBuilder*[T; N: static[cint]](
    theLeafNodeSize: cint = BVH_ConstantsLeafNodeSizeDefault;
    theMaxTreeDepth: cint = BVH_ConstantsMaxTreeDepth;
    theToUseMainAxis: bool = false): BVH_SpatialMedianBuilder[T, N] {.cdecl,
    constructor, importcpp: "BVH_SpatialMedianBuilder<\'*0,\'*1>(@)",
    header: "BVH_SpatialMedianBuilder.hxx".}
proc destroyBVH_SpatialMedianBuilder*[T; N: static[cint]](
    this: var BVH_SpatialMedianBuilder[T, N]) {.cdecl,
    importcpp: "#.~BVH_SpatialMedianBuilder()", header: "BVH_SpatialMedianBuilder.hxx".}
