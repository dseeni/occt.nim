##  Created on: 1997-01-21
##  Created by: Prestataire Christiane ARMAND
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom_Line"
discard "forward decl of Geom_Point"
type
  AIS_Line* {.importcpp: "AIS_Line", header: "AIS_Line.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                              ## !
                                                                                              ## Initializes
                                                                                              ## the
                                                                                              ## line
                                                                                              ## aLine.


proc newAIS_Line*(aLine: Handle[GeomLine]): AIS_Line {.cdecl, constructor,
    importcpp: "AIS_Line(@)", header: "AIS_Line.hxx".}
proc newAIS_Line*(aStartPoint: Handle[GeomPoint]; aEndPoint: Handle[GeomPoint]): AIS_Line {.
    cdecl, constructor, importcpp: "AIS_Line(@)", header: "AIS_Line.hxx".}
proc signature*(this: AIS_Line): cint {.noSideEffect, cdecl, importcpp: "Signature",
                                    header: "AIS_Line.hxx".}
proc `type`*(this: AIS_Line): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "AIS_Line.hxx".}
proc line*(this: AIS_Line): Handle[GeomLine] {.noSideEffect, cdecl, importcpp: "Line",
    header: "AIS_Line.hxx".}
proc points*(this: AIS_Line; thePStart: var Handle[GeomPoint];
            thePEnd: var Handle[GeomPoint]) {.noSideEffect, cdecl,
    importcpp: "Points", header: "AIS_Line.hxx".}
proc setLine*(this: var AIS_Line; theLine: Handle[GeomLine]) {.cdecl,
    importcpp: "SetLine", header: "AIS_Line.hxx".}
proc setPoints*(this: var AIS_Line; thePStart: Handle[GeomPoint];
               thePEnd: Handle[GeomPoint]) {.cdecl, importcpp: "SetPoints",
    header: "AIS_Line.hxx".}
proc setColor*(this: var AIS_Line; aColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_Line.hxx".}
proc setWidth*(this: var AIS_Line; aValue: cfloat) {.cdecl, importcpp: "SetWidth",
    header: "AIS_Line.hxx".}
proc unsetColor*(this: var AIS_Line) {.cdecl, importcpp: "UnsetColor", header: "AIS_Line.hxx".}
proc unsetWidth*(this: var AIS_Line) {.cdecl, importcpp: "UnsetWidth", header: "AIS_Line.hxx".}
type
  HandleAIS_Line* = Handle[AIS_Line]