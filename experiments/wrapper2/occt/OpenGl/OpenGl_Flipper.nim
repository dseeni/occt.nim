##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Ax2"
type
  OpenGlFlipper* {.importcpp: "OpenGl_Flipper", header: "OpenGl_Flipper.hxx", bycopy.} = object of OpenGlElement ##
                                                                                                       ## !
                                                                                                       ## Construct
                                                                                                       ## rendering
                                                                                                       ## element
                                                                                                       ## to
                                                                                                       ## flip
                                                                                                       ## model-view
                                                                                                       ## matrix
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## along
                                                                                                       ## the
                                                                                                       ## reference
                                                                                                       ## system
                                                                                                       ## to
                                                                                                       ## ensure
                                                                                                       ## up-Y,
                                                                                                       ## right-X
                                                                                                       ## orientation.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## theReferenceSystem
                                                                                                       ## [in]
                                                                                                       ## the
                                                                                                       ## reference
                                                                                                       ## coordinate
                                                                                                       ## system.


proc constructOpenGlFlipper*(theReferenceSystem: Ax2): OpenGlFlipper {.constructor,
    importcpp: "OpenGl_Flipper(@)", header: "OpenGl_Flipper.hxx".}
proc setOptions*(this: var OpenGlFlipper; theIsEnabled: bool) {.
    importcpp: "SetOptions", header: "OpenGl_Flipper.hxx".}
proc render*(this: OpenGlFlipper; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Flipper.hxx".}
proc release*(this: var OpenGlFlipper; theCtx: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_Flipper.hxx".}
proc dumpJson*(this: OpenGlFlipper; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "OpenGl_Flipper.hxx".}

























