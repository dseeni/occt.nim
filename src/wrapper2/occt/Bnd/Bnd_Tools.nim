##  Created by: Eugeny MALTCHIKOV
##  Created on: 2019-04-17
##  Copyright (c) 2019 OPEN CASCADE SAS
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
  Bnd_Box2d, Bnd_Box, ../BVH/BVH_Box

## ! Defines a set of static methods operating with bounding boxes

type
  Bnd_Tools* {.importcpp: "Bnd_Tools", header: "Bnd_Tools.hxx", bycopy.} = object ## ! @name
                                                                          ## Bnd_Box to
                                                                          ## BVH_Box
                                                                          ## conversion
                                                                          ## !
                                                                          ## Converts the given
                                                                          ## Bnd_Box2d to
                                                                          ## BVH_Box


proc Bnd2BVH*(theBox: Bnd_Box2d): BVH_Box[Standard_Real, 2] {.
    importcpp: "Bnd_Tools::Bnd2BVH(@)", header: "Bnd_Tools.hxx".}
proc Bnd2BVH*(theBox: Bnd_Box): BVH_Box[Standard_Real, 3] {.
    importcpp: "Bnd_Tools::Bnd2BVH(@)", header: "Bnd_Tools.hxx".}