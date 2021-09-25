##  Created on: 2017-04-25
##  Created by: Anton POLETAEV
##  Copyright (c) 2017 OPEN CASCADE SAS
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

## ! Enumerates transparency rendering methods supported by rasterization mode.

type
  Graphic3dRenderTransparentMethod* {.size: sizeof(cint), importcpp: "Graphic3d_RenderTransparentMethod", header: "Graphic3d_RenderTransparentMethod.hxx".} = enum
    Graphic3dRTM_BLEND_UNORDERED, ## !< Basic blend transparency with non-commuting blend operator without sorting
    Graphic3dRTM_BLEND_OIT    ## !< Weighted Blended Order-Independent Transparency with depth weight factor


