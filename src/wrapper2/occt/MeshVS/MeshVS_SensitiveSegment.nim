##  Created on: 2003-09-29
##  Created by: Alexander SOLOVYOV and Sergey LITONIN
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../gp/gp_Pnt, ../Select3D/Select3D_SensitiveSegment

## ! This class provides custom sensitive face, which will be selected if it center is in rectangle.

type
  MeshVS_SensitiveSegment* {.importcpp: "MeshVS_SensitiveSegment",
                            header: "MeshVS_SensitiveSegment.hxx", bycopy.} = object of Select3D_SensitiveSegment


proc constructMeshVS_SensitiveSegment*(theOwner: handle[SelectMgr_EntityOwner];
                                      theFirstPnt: gp_Pnt; theLastPnt: gp_Pnt): MeshVS_SensitiveSegment {.
    constructor, importcpp: "MeshVS_SensitiveSegment(@)",
    header: "MeshVS_SensitiveSegment.hxx".}
type
  MeshVS_SensitiveSegmentbase_type* = Select3D_SensitiveSegment

proc get_type_name*(): cstring {.importcpp: "MeshVS_SensitiveSegment::get_type_name(@)",
                              header: "MeshVS_SensitiveSegment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MeshVS_SensitiveSegment::get_type_descriptor(@)",
    header: "MeshVS_SensitiveSegment.hxx".}
proc DynamicType*(this: MeshVS_SensitiveSegment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "MeshVS_SensitiveSegment.hxx".}
discard "forward decl of MeshVS_SensitiveSegment"
type
  Handle_MeshVS_SensitiveSegment* = handle[MeshVS_SensitiveSegment]
