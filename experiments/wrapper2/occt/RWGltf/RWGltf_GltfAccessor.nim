##  Author: Kirill Gavrilov
##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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

## ! Low-level glTF data structure defining Accessor.

type
  RWGltfGltfAccessor* {.importcpp: "RWGltf_GltfAccessor",
                       header: "RWGltf_GltfAccessor.hxx", bycopy.} = object
    id* {.importc: "Id".}: cint  ## !< identifier
    byteOffset* {.importc: "ByteOffset".}: int64T ## !< byte offset
    count* {.importc: "Count".}: int64T ## !< size
    byteStride* {.importc: "ByteStride".}: int32T ## !< [0, 255] for glTF 1.0
    `type`* {.importc: "Type".}: RWGltfGltfAccessorLayout ## !< layout type
    componentType* {.importc: "ComponentType".}: RWGltfGltfAccessorCompType ## !< component type
    bndBox* {.importc: "BndBox".}: Graphic3dBndBox3d ## !< bounding box
                                                 ## ! Empty constructor.


proc constructRWGltfGltfAccessor*(): RWGltfGltfAccessor {.constructor,
    importcpp: "RWGltf_GltfAccessor(@)", header: "RWGltf_GltfAccessor.hxx".}

























