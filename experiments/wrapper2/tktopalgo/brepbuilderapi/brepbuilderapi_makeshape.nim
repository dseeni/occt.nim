##  Created on: 1993-07-21
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
type
  BRepBuilderAPI_MakeShape* {.importcpp: "BRepBuilderAPI_MakeShape",
                             header: "BRepBuilderAPI_MakeShape.hxx", bycopy.} = object of BRepBuilderAPI_Command ##
                                                                                                          ## !
                                                                                                          ## This
                                                                                                          ## is
                                                                                                          ## called
                                                                                                          ## by
                                                                                                          ## Shape().
                                                                                                          ## It
                                                                                                          ## does
                                                                                                          ## nothing
                                                                                                          ## but
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## may
                                                                                                          ## be
                                                                                                          ## redefined.


proc build*(this: var BRepBuilderAPI_MakeShape) {.cdecl, importcpp: "Build",
    dynlib: tktopalgo.}
proc shape*(this: var BRepBuilderAPI_MakeShape): TopoDS_Shape {.cdecl,
    importcpp: "Shape", dynlib: tktopalgo.}
converter `topoDS_Shape`*(this: var BRepBuilderAPI_MakeShape): TopoDS_Shape {.cdecl,
    importcpp: "BRepBuilderAPI_MakeShape::operator TopoDS_Shape",
    dynlib: tktopalgo.}
proc generated*(this: var BRepBuilderAPI_MakeShape; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", dynlib: tktopalgo.}
proc modified*(this: var BRepBuilderAPI_MakeShape; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", dynlib: tktopalgo.}
proc isDeleted*(this: var BRepBuilderAPI_MakeShape; s: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", dynlib: tktopalgo.}