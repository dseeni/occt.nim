##  Copyright (c) 2018 OPEN CASCADE SAS
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

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
type
  BRepGPropMeshCinert* {.importcpp: "BRepGProp_MeshCinert",
                        header: "BRepGProp_MeshCinert.hxx", bycopy.} = object of GPropGProps


proc `new`*(this: var BRepGPropMeshCinert; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_MeshCinert::operator new",
    header: "BRepGProp_MeshCinert.hxx".}
proc `delete`*(this: var BRepGPropMeshCinert; theAddress: pointer) {.
    importcpp: "BRepGProp_MeshCinert::operator delete",
    header: "BRepGProp_MeshCinert.hxx".}
proc `new[]`*(this: var BRepGPropMeshCinert; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_MeshCinert::operator new[]",
    header: "BRepGProp_MeshCinert.hxx".}
proc `delete[]`*(this: var BRepGPropMeshCinert; theAddress: pointer) {.
    importcpp: "BRepGProp_MeshCinert::operator delete[]",
    header: "BRepGProp_MeshCinert.hxx".}
proc `new`*(this: var BRepGPropMeshCinert; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp_MeshCinert::operator new",
    header: "BRepGProp_MeshCinert.hxx".}
proc `delete`*(this: var BRepGPropMeshCinert; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp_MeshCinert::operator delete",
    header: "BRepGProp_MeshCinert.hxx".}
proc constructBRepGPropMeshCinert*(): BRepGPropMeshCinert {.constructor,
    importcpp: "BRepGProp_MeshCinert(@)", header: "BRepGProp_MeshCinert.hxx".}
proc setLocation*(this: var BRepGPropMeshCinert; cLocation: Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_MeshCinert.hxx".}
proc perform*(this: var BRepGPropMeshCinert; theNodes: TColgpArray1OfPnt) {.
    importcpp: "Perform", header: "BRepGProp_MeshCinert.hxx".}
proc preparePolygon*(theE: TopoDS_Edge; thePolyg: var Handle[TColgpHArray1OfPnt]) {.
    importcpp: "BRepGProp_MeshCinert::PreparePolygon(@)",
    header: "BRepGProp_MeshCinert.hxx".}