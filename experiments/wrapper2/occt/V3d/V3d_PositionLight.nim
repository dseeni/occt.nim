##  Created on: 1997-11-21
##  Created by: ZOV
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

## ! Base class for Positional, Spot and Directional Light classes.

type
  V3dPositionLight* {.importcpp: "V3d_PositionLight",
                     header: "V3d_PositionLight.hxx", bycopy.} = object of Graphic3dCLight ##
                                                                                    ## !
                                                                                    ## Protected
                                                                                    ## constructor.

  V3dPositionLightbaseType* = Graphic3dCLight

proc getTypeName*(): cstring {.importcpp: "V3d_PositionLight::get_type_name(@)",
                            header: "V3d_PositionLight.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "V3d_PositionLight::get_type_descriptor(@)",
    header: "V3d_PositionLight.hxx".}
proc dynamicType*(this: V3dPositionLight): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_PositionLight.hxx".}
## using statement

## using statement

discard "forward decl of V3d_PositionLight"
type
  HandleV3dPositionLight* = Handle[V3dPositionLight]

