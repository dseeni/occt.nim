##  Created on: 2007-03-07
##  Created by: msv@EUCLIDEX
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../gp/gp_Pnt

## *
##  General purpose buffer that is allocated on the stack with a
##  constant size MeshVS_BufSize, or is allocated dynamically if the requested
##  size exceeds the standard one.
##  It is useful when an allocation of an array of unknown size is needed,
##  and most often the array is small enough to allocate as automatic C array.
##
## ! define the constant to the size of 10 points

const
  MeshVS_BufSize* = 10 * 3 * sizeof((double))

type
  MeshVS_Buffer* {.importcpp: "MeshVS_Buffer", header: "MeshVS_Buffer.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructor
                                                                                      ## of
                                                                                      ## the
                                                                                      ## buffer
                                                                                      ## of
                                                                                      ## the
                                                                                      ## requested
                                                                                      ## size
                                                                                      ##
                                                                                      ## !
                                                                                      ## Deprecate
                                                                                      ## copy
                                                                                      ## constructor


proc constructMeshVS_Buffer*(theSize: Standard_Size): MeshVS_Buffer {.constructor,
    importcpp: "MeshVS_Buffer(@)", header: "MeshVS_Buffer.hxx".}
proc destroyMeshVS_Buffer*(this: var MeshVS_Buffer) {.
    importcpp: "#.~MeshVS_Buffer()", header: "MeshVS_Buffer.hxx".}
converter `void*`*(this: var MeshVS_Buffer): pointer {.
    importcpp: "MeshVS_Buffer::operator void*", header: "MeshVS_Buffer.hxx".}
converter `Standard_Real&`*(this: var MeshVS_Buffer): var Standard_Real {.
    importcpp: "MeshVS_Buffer::operator Standard_Real&",
    header: "MeshVS_Buffer.hxx".}
converter `Standard_Integer&`*(this: var MeshVS_Buffer): var Standard_Integer {.
    importcpp: "MeshVS_Buffer::operator Standard_Integer&",
    header: "MeshVS_Buffer.hxx".}
converter `gp_Pnt&`*(this: var MeshVS_Buffer): var gp_Pnt {.
    importcpp: "MeshVS_Buffer::operator gp_Pnt&", header: "MeshVS_Buffer.hxx".}