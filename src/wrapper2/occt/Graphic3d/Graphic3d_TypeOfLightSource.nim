##  Created on: 1991-10-07
##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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

## ! Definition of all the type of light source.

type
  Graphic3d_TypeOfLightSource* {.size: sizeof(cint),
                                importcpp: "Graphic3d_TypeOfLightSource",
                                header: "Graphic3d_TypeOfLightSource.hxx".} = enum
    Graphic3d_TOLS_AMBIENT,   ## !< ambient light
    Graphic3d_TOLS_DIRECTIONAL, ## !< directional light
    Graphic3d_TOLS_POSITIONAL, ## !< positional light
    Graphic3d_TOLS_SPOT       ## !< spot light
                       ##  obsolete aliases

const
  V3d_AMBIENT* = Graphic3d_TOLS_AMBIENT
  V3d_DIRECTIONAL* = Graphic3d_TOLS_DIRECTIONAL
  V3d_POSITIONAL* = Graphic3d_TOLS_POSITIONAL
  V3d_SPOT* = Graphic3d_TOLS_SPOT

const                         ## ! Auxiliary value defining the overall number of values in enumeration Graphic3d_TypeOfLightSource
  Graphic3d_TypeOfLightSource_NB* = Graphic3d_TOLS_SPOT + 1
