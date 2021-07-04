##  Created on: 1999-02-26
##  Created by: Christian CAILLET
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../IFSelect/IFSelect_SelectExplore, ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectPCurves"
discard "forward decl of IGESSelect_SelectPCurves"
type
  Handle_IGESSelect_SelectPCurves* = handle[IGESSelect_SelectPCurves]

## ! This Selection returns the pcurves which lie on a face
## ! In two modes : global (i.e. a CompositeCurve is not explored)
## ! or basic (all the basic curves are listed)

type
  IGESSelect_SelectPCurves* {.importcpp: "IGESSelect_SelectPCurves",
                             header: "IGESSelect_SelectPCurves.hxx", bycopy.} = object of IFSelect_SelectExplore ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## SelectPCurves
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## basic
                                                                                                          ## True
                                                                                                          ## :
                                                                                                          ## lists
                                                                                                          ## all
                                                                                                          ## the
                                                                                                          ## components
                                                                                                          ## of
                                                                                                          ## pcurves
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## basic
                                                                                                          ## False
                                                                                                          ## :
                                                                                                          ## lists
                                                                                                          ## the
                                                                                                          ## uppest
                                                                                                          ## level
                                                                                                          ## definitions
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## (i.e.
                                                                                                          ## stops
                                                                                                          ## at
                                                                                                          ## CompositeCurve)


proc constructIGESSelect_SelectPCurves*(basic: Standard_Boolean): IGESSelect_SelectPCurves {.
    constructor, importcpp: "IGESSelect_SelectPCurves(@)",
    header: "IGESSelect_SelectPCurves.hxx".}
proc Explore*(this: IGESSelect_SelectPCurves; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore", header: "IGESSelect_SelectPCurves.hxx".}
proc ExploreLabel*(this: IGESSelect_SelectPCurves): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel", header: "IGESSelect_SelectPCurves.hxx".}
type
  IGESSelect_SelectPCurvesbase_type* = IFSelect_SelectExplore

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SelectPCurves::get_type_name(@)",
                              header: "IGESSelect_SelectPCurves.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SelectPCurves::get_type_descriptor(@)",
    header: "IGESSelect_SelectPCurves.hxx".}
proc DynamicType*(this: IGESSelect_SelectPCurves): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_SelectPCurves.hxx".}