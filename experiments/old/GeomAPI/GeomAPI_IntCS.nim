##  Created on: 1995-09-12
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
type
  GeomAPI_IntCS* {.importcpp: "GeomAPI_IntCS", header: "GeomAPI_IntCS.hxx", bycopy.} = object


proc `new`*(this: var GeomAPI_IntCS; theSize: csize_t): pointer {.
    importcpp: "GeomAPI_IntCS::operator new", header: "GeomAPI_IntCS.hxx".}
proc `delete`*(this: var GeomAPI_IntCS; theAddress: pointer) {.
    importcpp: "GeomAPI_IntCS::operator delete", header: "GeomAPI_IntCS.hxx".}
proc `new[]`*(this: var GeomAPI_IntCS; theSize: csize_t): pointer {.
    importcpp: "GeomAPI_IntCS::operator new[]", header: "GeomAPI_IntCS.hxx".}
proc `delete[]`*(this: var GeomAPI_IntCS; theAddress: pointer) {.
    importcpp: "GeomAPI_IntCS::operator delete[]", header: "GeomAPI_IntCS.hxx".}
proc `new`*(this: var GeomAPI_IntCS; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomAPI_IntCS::operator new", header: "GeomAPI_IntCS.hxx".}
proc `delete`*(this: var GeomAPI_IntCS; a2: pointer; a3: pointer) {.
    importcpp: "GeomAPI_IntCS::operator delete", header: "GeomAPI_IntCS.hxx".}
proc constructGeomAPI_IntCS*(): GeomAPI_IntCS {.constructor,
    importcpp: "GeomAPI_IntCS(@)", header: "GeomAPI_IntCS.hxx".}
proc constructGeomAPI_IntCS*(c: Handle[GeomCurve]; s: Handle[GeomSurface]): GeomAPI_IntCS {.
    constructor, importcpp: "GeomAPI_IntCS(@)", header: "GeomAPI_IntCS.hxx".}
proc perform*(this: var GeomAPI_IntCS; c: Handle[GeomCurve]; s: Handle[GeomSurface]) {.
    importcpp: "Perform", header: "GeomAPI_IntCS.hxx".}
proc isDone*(this: GeomAPI_IntCS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_IntCS.hxx".}
proc nbPoints*(this: GeomAPI_IntCS): int {.noSideEffect, importcpp: "NbPoints",
                                       header: "GeomAPI_IntCS.hxx".}
proc point*(this: GeomAPI_IntCS; index: int): Pnt {.noSideEffect, importcpp: "Point",
    header: "GeomAPI_IntCS.hxx".}
proc parameters*(this: GeomAPI_IntCS; index: int; u: var StandardReal;
                v: var StandardReal; w: var StandardReal) {.noSideEffect,
    importcpp: "Parameters", header: "GeomAPI_IntCS.hxx".}
proc nbSegments*(this: GeomAPI_IntCS): int {.noSideEffect, importcpp: "NbSegments",
    header: "GeomAPI_IntCS.hxx".}
proc segment*(this: GeomAPI_IntCS; index: int): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Segment", header: "GeomAPI_IntCS.hxx".}
proc parameters*(this: GeomAPI_IntCS; index: int; u1: var StandardReal;
                v1: var StandardReal; u2: var StandardReal; v2: var StandardReal) {.
    noSideEffect, importcpp: "Parameters", header: "GeomAPI_IntCS.hxx".}