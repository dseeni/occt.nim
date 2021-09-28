##  Created on: 2013-09-26
##  Created by: Dmitry BOBYLEV
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

type
  OpenGlStencilTest* {.importcpp: "OpenGl_StencilTest",
                      header: "OpenGl_StencilTest.hxx", bycopy.} = object of OpenGlElement ##
                                                                                    ## !
                                                                                    ## Default
                                                                                    ## constructor
                                                                                    ##
                                                                                    ## !
                                                                                    ## Destructor


proc constructOpenGlStencilTest*(): OpenGlStencilTest {.constructor,
    importcpp: "OpenGl_StencilTest(@)", header: "OpenGl_StencilTest.hxx".}
proc render*(this: OpenGlStencilTest; theWorkspace: Handle[OpenGlWorkspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_StencilTest.hxx".}
proc release*(this: var OpenGlStencilTest; theContext: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_StencilTest.hxx".}
proc setOptions*(this: var OpenGlStencilTest; theIsEnabled: bool) {.
    importcpp: "SetOptions", header: "OpenGl_StencilTest.hxx".}
proc dumpJson*(this: OpenGlStencilTest; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "OpenGl_StencilTest.hxx".}

























