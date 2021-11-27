##  Created on: 1995-03-10
##  Created by: Laurent PAINNOT
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

discard "forward decl of Poly_Polygon2D"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DrawTrSurf_Polygon2D"
discard "forward decl of DrawTrSurf_Polygon2D"
type
  HandleC1C1* = Handle[DrawTrSurfPolygon2D]

## ! Used to display a 2d polygon.
## !
## ! Optional display of nodes.

type
  DrawTrSurfPolygon2D* {.importcpp: "DrawTrSurf_Polygon2D",
                        header: "DrawTrSurf_Polygon2D.hxx", bycopy.} = object of DrawDrawable2D


proc constructDrawTrSurfPolygon2D*(p: Handle[PolyPolygon2D]): DrawTrSurfPolygon2D {.
    constructor, importcpp: "DrawTrSurf_Polygon2D(@)",
    header: "DrawTrSurf_Polygon2D.hxx".}
proc polygon2D*(this: DrawTrSurfPolygon2D): Handle[PolyPolygon2D] {.noSideEffect,
    importcpp: "Polygon2D", header: "DrawTrSurf_Polygon2D.hxx".}
proc showNodes*(this: var DrawTrSurfPolygon2D; b: bool) {.importcpp: "ShowNodes",
    header: "DrawTrSurf_Polygon2D.hxx".}
proc showNodes*(this: DrawTrSurfPolygon2D): bool {.noSideEffect,
    importcpp: "ShowNodes", header: "DrawTrSurf_Polygon2D.hxx".}
proc drawOn*(this: DrawTrSurfPolygon2D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DrawTrSurf_Polygon2D.hxx".}
proc copy*(this: DrawTrSurfPolygon2D): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DrawTrSurf_Polygon2D.hxx".}
proc dump*(this: DrawTrSurfPolygon2D; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DrawTrSurf_Polygon2D.hxx".}
proc whatis*(this: DrawTrSurfPolygon2D; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DrawTrSurf_Polygon2D.hxx".}
type
  DrawTrSurfPolygon2DbaseType* = DrawDrawable2D

proc getTypeName*(): cstring {.importcpp: "DrawTrSurf_Polygon2D::get_type_name(@)",
                            header: "DrawTrSurf_Polygon2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DrawTrSurf_Polygon2D::get_type_descriptor(@)",
    header: "DrawTrSurf_Polygon2D.hxx".}
proc dynamicType*(this: DrawTrSurfPolygon2D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DrawTrSurf_Polygon2D.hxx".}
























