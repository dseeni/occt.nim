##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  IGESDraw_HArray1OfViewKindEntity, ../TColgp/TColgp_HArray1OfXY,
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESDraw_Drawing"
discard "forward decl of IGESDraw_Drawing"
type
  Handle_IGESDraw_Drawing* = handle[IGESDraw_Drawing]

## ! defines IGESDrawing, Type <404> Form <0>
## ! in package IGESDraw
## !
## ! Specifies a drawing as a collection of annotation entities
## ! defined in drawing space, and views which together
## ! constitute a single representation of a part

type
  IGESDraw_Drawing* {.importcpp: "IGESDraw_Drawing",
                     header: "IGESDraw_Drawing.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDraw_Drawing*(): IGESDraw_Drawing {.constructor,
    importcpp: "IGESDraw_Drawing(@)", header: "IGESDraw_Drawing.hxx".}
proc Init*(this: var IGESDraw_Drawing;
          allViews: handle[IGESDraw_HArray1OfViewKindEntity];
          allViewOrigins: handle[TColgp_HArray1OfXY];
          allAnnotations: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_Drawing.hxx".}
proc NbViews*(this: IGESDraw_Drawing): Standard_Integer {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_Drawing.hxx".}
proc ViewItem*(this: IGESDraw_Drawing; ViewIndex: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESDraw_Drawing.hxx".}
proc ViewOrigin*(this: IGESDraw_Drawing; TViewIndex: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "ViewOrigin", header: "IGESDraw_Drawing.hxx".}
proc NbAnnotations*(this: IGESDraw_Drawing): Standard_Integer {.noSideEffect,
    importcpp: "NbAnnotations", header: "IGESDraw_Drawing.hxx".}
proc Annotation*(this: IGESDraw_Drawing; AnnotationIndex: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Annotation",
                          header: "IGESDraw_Drawing.hxx".}
proc ViewToDrawing*(this: IGESDraw_Drawing; NumView: Standard_Integer;
                   ViewCoords: gp_XYZ): gp_XY {.noSideEffect,
    importcpp: "ViewToDrawing", header: "IGESDraw_Drawing.hxx".}
proc DrawingUnit*(this: IGESDraw_Drawing; value: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "DrawingUnit", header: "IGESDraw_Drawing.hxx".}
proc DrawingSize*(this: IGESDraw_Drawing; X: var Standard_Real; Y: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "DrawingSize", header: "IGESDraw_Drawing.hxx".}
type
  IGESDraw_Drawingbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_Drawing::get_type_name(@)",
                              header: "IGESDraw_Drawing.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_Drawing::get_type_descriptor(@)",
    header: "IGESDraw_Drawing.hxx".}
proc DynamicType*(this: IGESDraw_Drawing): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_Drawing.hxx".}