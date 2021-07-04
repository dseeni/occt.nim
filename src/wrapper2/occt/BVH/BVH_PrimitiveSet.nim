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

import
  BVH_Object, BVH_Builder, BVH_BinnedBuilder

## ! Set of abstract geometric primitives organized with bounding
## ! volume hierarchy (BVH). Unlike an object set, this collection
## ! is designed for storing structural elements of a single object
## ! (such as triangles in the object triangulation). Because there
## ! may be a large number of such elements, the implementations of
## ! this interface should be sufficiently optimized.
## ! \tparam T Numeric data type
## ! \tparam N Vector dimension

type
  BVH_PrimitiveSet*[T; N: static[cint]] {.importcpp: "BVH_PrimitiveSet<\'0,\'1>",
                                       header: "BVH_PrimitiveSet.hxx", bycopy.} = object of BVH_Object[
      T, N]                    ## ! Returns AABB of primitive set.
          ## ! Updates BVH of primitive set.
    ## !< Constructed bottom-level BVH
    ## !< Builder for bottom-level BVH
    ## !< Cached bounding box of geometric primitives


## using statement

proc constructBVH_PrimitiveSet*[T; N: static[cint]](): BVH_PrimitiveSet[T, N] {.
    constructor, importcpp: "BVH_PrimitiveSet<\'*0,\'*1>(@)",
    header: "BVH_PrimitiveSet.hxx".}
proc constructBVH_PrimitiveSet*[T; N: static[cint]](
    theBuilder: handle[BVH_Builder[T, N]]): BVH_PrimitiveSet[T, N] {.constructor,
    importcpp: "BVH_PrimitiveSet<\'*0,\'*1>(@)", header: "BVH_PrimitiveSet.hxx".}
proc destroyBVH_PrimitiveSet*[T; N: static[cint]](this: var BVH_PrimitiveSet[T, N]) {.
    importcpp: "#.~BVH_PrimitiveSet()", header: "BVH_PrimitiveSet.hxx".}
proc Box*[T; N: static[cint]](this: BVH_PrimitiveSet[T, N]): BVH_Box[T, N] {.
    noSideEffect, importcpp: "Box", header: "BVH_PrimitiveSet.hxx".}
proc BVH*[T; N: static[cint]](this: var BVH_PrimitiveSet[T, N]): handle[BVH_Tree[T, N]] {.
    importcpp: "BVH", header: "BVH_PrimitiveSet.hxx".}
proc Builder*[T; N: static[cint]](this: BVH_PrimitiveSet[T, N]): handle[
    BVH_Builder[T, N]] {.noSideEffect, importcpp: "Builder",
                       header: "BVH_PrimitiveSet.hxx".}
proc SetBuilder*[T; N: static[cint]](this: var BVH_PrimitiveSet[T, N];
                                  theBuilder: handle[BVH_Builder[T, N]]) {.
    importcpp: "SetBuilder", header: "BVH_PrimitiveSet.hxx".}