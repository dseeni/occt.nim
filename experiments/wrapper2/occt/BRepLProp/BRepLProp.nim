##  Created on: 1994-02-24
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of BRepLProp_CurveTool"
discard "forward decl of BRepLProp_SurfaceTool"
discard "forward decl of BRepLProp_CLProps"
discard "forward decl of BRepLProp_SLProps"
type
  BRepLProp* {.importcpp: "BRepLProp", header: "BRepLProp.hxx", bycopy.} = object


proc `new`*(this: var BRepLProp; theSize: csize_t): pointer {.
    importcpp: "BRepLProp::operator new", header: "BRepLProp.hxx".}
proc `delete`*(this: var BRepLProp; theAddress: pointer) {.
    importcpp: "BRepLProp::operator delete", header: "BRepLProp.hxx".}
proc `new[]`*(this: var BRepLProp; theSize: csize_t): pointer {.
    importcpp: "BRepLProp::operator new[]", header: "BRepLProp.hxx".}
proc `delete[]`*(this: var BRepLProp; theAddress: pointer) {.
    importcpp: "BRepLProp::operator delete[]", header: "BRepLProp.hxx".}
proc `new`*(this: var BRepLProp; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepLProp::operator new", header: "BRepLProp.hxx".}
proc `delete`*(this: var BRepLProp; a2: pointer; a3: pointer) {.
    importcpp: "BRepLProp::operator delete", header: "BRepLProp.hxx".}
proc continuity*(c1: BRepAdaptorCurve; c2: BRepAdaptorCurve; u1: StandardReal;
                u2: StandardReal; tl: StandardReal; ta: StandardReal): GeomAbsShape {.
    importcpp: "BRepLProp::Continuity(@)", header: "BRepLProp.hxx".}
proc continuity*(c1: BRepAdaptorCurve; c2: BRepAdaptorCurve; u1: StandardReal;
                u2: StandardReal): GeomAbsShape {.
    importcpp: "BRepLProp::Continuity(@)", header: "BRepLProp.hxx".}