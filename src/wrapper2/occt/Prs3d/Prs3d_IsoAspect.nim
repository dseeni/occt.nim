##  Created on: 1993-04-26
##  Created by: Jean-Louis Frenkel
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
  Prs3d_LineAspect

## ! A framework to define the display attributes of isoparameters.
## ! This framework can be used to modify the default
## ! setting for isoparameters in Prs3d_Drawer.

type
  Prs3d_IsoAspect* {.importcpp: "Prs3d_IsoAspect", header: "Prs3d_IsoAspect.hxx",
                    bycopy.} = object of Prs3d_LineAspect ## ! Constructs a framework to define display attributes of isoparameters.
                                                     ## ! These include:
                                                     ## ! -   the color attribute aColor
                                                     ## ! -   the type of line aType
                                                     ## ! -   the width value aWidth
                                                     ## ! -   aNumber, the number of isoparameters to be   displayed.

  Prs3d_IsoAspectbase_type* = Prs3d_LineAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_IsoAspect::get_type_name(@)",
                              header: "Prs3d_IsoAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_IsoAspect::get_type_descriptor(@)",
    header: "Prs3d_IsoAspect.hxx".}
proc DynamicType*(this: Prs3d_IsoAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_IsoAspect.hxx".}
proc constructPrs3d_IsoAspect*(theColor: Quantity_Color;
                              theType: Aspect_TypeOfLine; theWidth: Standard_Real;
                              theNumber: Standard_Integer): Prs3d_IsoAspect {.
    constructor, importcpp: "Prs3d_IsoAspect(@)", header: "Prs3d_IsoAspect.hxx".}
proc SetNumber*(this: var Prs3d_IsoAspect; theNumber: Standard_Integer) {.
    importcpp: "SetNumber", header: "Prs3d_IsoAspect.hxx".}
proc Number*(this: Prs3d_IsoAspect): Standard_Integer {.noSideEffect,
    importcpp: "Number", header: "Prs3d_IsoAspect.hxx".}
discard "forward decl of Prs3d_IsoAspect"
type
  Handle_Prs3d_IsoAspect* = handle[Prs3d_IsoAspect]
