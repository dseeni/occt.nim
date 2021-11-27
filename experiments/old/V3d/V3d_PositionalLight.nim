##  Created on: 1992-01-22
##  Created by: GG
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! Creation and modification of an isolated (positional) light source.
## ! It is also defined by the color and two attenuation factors ConstAttentuation() and LinearAttentuation().
## ! The resulting attenuation factor determining the illumination of a surface depends on the following formula:
## ! @code
## !   F = 1 / (ConstAttenuation() + LinearAttenuation() * Distance)
## ! @endcode
## ! Where Distance is the distance of the isolated source from the surface.

type
  V3dPositionalLight* {.importcpp: "V3d_PositionalLight",
                       header: "V3d_PositionalLight.hxx", bycopy.} = object of V3dPositionLight ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## an
                                                                                         ## isolated
                                                                                         ## light
                                                                                         ## source
                                                                                         ## in
                                                                                         ## the
                                                                                         ## viewer
                                                                                         ## with
                                                                                         ## default
                                                                                         ## attenuation
                                                                                         ## factors
                                                                                         ## (1.0,
                                                                                         ## 0.0).

  V3dPositionalLightbaseType* = V3dPositionLight

proc getTypeName*(): cstring {.importcpp: "V3d_PositionalLight::get_type_name(@)",
                            header: "V3d_PositionalLight.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "V3d_PositionalLight::get_type_descriptor(@)",
    header: "V3d_PositionalLight.hxx".}
proc dynamicType*(this: V3dPositionalLight): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_PositionalLight.hxx".}
proc constructV3dPositionalLight*(thePos: Pnt;
                                 theColor: QuantityColor = quantityNOC_WHITE): V3dPositionalLight {.
    constructor, importcpp: "V3d_PositionalLight(@)",
    header: "V3d_PositionalLight.hxx".}
## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

discard "forward decl of V3d_PositionalLight"
type
  HandleC1C1* = Handle[V3dPositionalLight]

























