##  Created on: 2015-06-05
##  Created by: Kirill Gavrilov
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## ! Options to be used with image dumping.
## ! Notice that the value will have no effect with disabled stereo output.

type
  V3dStereoDumpOptions* {.size: sizeof(cint), importcpp: "V3d_StereoDumpOptions",
                         header: "V3d_StereoDumpOptions.hxx".} = enum
    V3dSDO_MONO,              ## !< ignore stereo mode and dump monographic projection for stereo camera
    V3dSDO_LEFT_EYE,          ## !< dump only left  eye projection for stereo camera
    V3dSDO_RIGHT_EYE,         ## !< dump only right eye projection for stereo camera
    V3dSDO_BLENDED            ## !< dump blended pair specific to the active device output Graphic3d_StereoMode (result will be undefined for modes like Graphic3d_StereoMode_QuadBuffer)



























