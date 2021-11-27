##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
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

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Vertex"
type
  BRepLibMakeVertex* {.importcpp: "BRepLib_MakeVertex",
                      header: "BRepLib_MakeVertex.hxx", bycopy.} = object of BRepLibMakeShape


proc `new`*(this: var BRepLibMakeVertex; theSize: csize_t): pointer {.
    importcpp: "BRepLib_MakeVertex::operator new",
    header: "BRepLib_MakeVertex.hxx".}
proc `delete`*(this: var BRepLibMakeVertex; theAddress: pointer) {.
    importcpp: "BRepLib_MakeVertex::operator delete",
    header: "BRepLib_MakeVertex.hxx".}
proc `new[]`*(this: var BRepLibMakeVertex; theSize: csize_t): pointer {.
    importcpp: "BRepLib_MakeVertex::operator new[]",
    header: "BRepLib_MakeVertex.hxx".}
proc `delete[]`*(this: var BRepLibMakeVertex; theAddress: pointer) {.
    importcpp: "BRepLib_MakeVertex::operator delete[]",
    header: "BRepLib_MakeVertex.hxx".}
proc `new`*(this: var BRepLibMakeVertex; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepLib_MakeVertex::operator new",
    header: "BRepLib_MakeVertex.hxx".}
proc `delete`*(this: var BRepLibMakeVertex; a2: pointer; a3: pointer) {.
    importcpp: "BRepLib_MakeVertex::operator delete",
    header: "BRepLib_MakeVertex.hxx".}
proc constructBRepLibMakeVertex*(p: Pnt): BRepLibMakeVertex {.constructor,
    importcpp: "BRepLib_MakeVertex(@)", header: "BRepLib_MakeVertex.hxx".}
proc vertex*(this: var BRepLibMakeVertex): TopoDS_Vertex {.importcpp: "Vertex",
    header: "BRepLib_MakeVertex.hxx".}
converter `topoDS_Vertex`*(this: var BRepLibMakeVertex): TopoDS_Vertex {.
    importcpp: "BRepLib_MakeVertex::operator TopoDS_Vertex",
    header: "BRepLib_MakeVertex.hxx".}