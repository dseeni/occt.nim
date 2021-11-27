##  Created on: 2016-02-18
##  Created by: Varvara POSKONINA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Sensitive entity covering entire mesh for global selection.

type
  MeshVS_CommonSensitiveEntity* {.importcpp: "MeshVS_CommonSensitiveEntity",
                                 header: "MeshVS_CommonSensitiveEntity.hxx",
                                 bycopy.} = object of Select3D_SensitiveSet ## ! Default
                                                                       ## constructor.
                                                                       ## ! Checks whether the entity with index theIdx overlaps the current selecting volume
                                                                       ## ! Return point for specified index.
    ## !< mesh data source
    ## !< indices for BVH tree reordering
    ## !< selection mode
    ## !< maximum nodes within the element in mesh
    ## !< center of gravity
    ## !< bounding box

  MeshVS_CommonSensitiveEntitybaseType* = Select3D_SensitiveSet

proc getTypeName*(): cstring {.importcpp: "MeshVS_CommonSensitiveEntity::get_type_name(@)",
                            header: "MeshVS_CommonSensitiveEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MeshVS_CommonSensitiveEntity::get_type_descriptor(@)",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc dynamicType*(this: MeshVS_CommonSensitiveEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc constructMeshVS_CommonSensitiveEntity*(
    theOwner: Handle[SelectMgrEntityOwner]; theParentMesh: Handle[MeshVS_Mesh];
    theSelMethod: MeshVS_MeshSelectionMethod): MeshVS_CommonSensitiveEntity {.
    constructor, importcpp: "MeshVS_CommonSensitiveEntity(@)",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc destroyMeshVS_CommonSensitiveEntity*(this: var MeshVS_CommonSensitiveEntity) {.
    importcpp: "#.~MeshVS_CommonSensitiveEntity()",
    header: "MeshVS_CommonSensitiveEntity.hxx".}
proc nbSubElements*(this: MeshVS_CommonSensitiveEntity): cint {.noSideEffect,
    importcpp: "NbSubElements", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc size*(this: MeshVS_CommonSensitiveEntity): cint {.noSideEffect,
    importcpp: "Size", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc box*(this: MeshVS_CommonSensitiveEntity; theIdx: cint): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc center*(this: MeshVS_CommonSensitiveEntity; theIdx: cint; theAxis: cint): cfloat {.
    noSideEffect, importcpp: "Center", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc swap*(this: var MeshVS_CommonSensitiveEntity; theIdx1: cint; theIdx2: cint) {.
    importcpp: "Swap", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc boundingBox*(this: var MeshVS_CommonSensitiveEntity): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc centerOfGeometry*(this: MeshVS_CommonSensitiveEntity): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "MeshVS_CommonSensitiveEntity.hxx".}
proc getConnected*(this: var MeshVS_CommonSensitiveEntity): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "MeshVS_CommonSensitiveEntity.hxx".}
discard "forward decl of MeshVS_CommonSensitiveEntity"
type
  HandleC1C1* = Handle[MeshVS_CommonSensitiveEntity]

























