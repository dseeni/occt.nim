##  Created on: 2012-03-06
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

## ! OpenGL 1.4 core based on 1.3 version.

type
  OpenGlTmplCore14*[TheBaseClassT] {.importcpp: "OpenGl_TmplCore14<\'0>",
                                    header: "OpenGl_GlCore14.hxx", bycopy.} = object of TheBaseClassT ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## OpenGL
                                                                                               ## 1.4
                                                                                               ## additives
                                                                                               ## to
                                                                                               ## 1.3


## using statement

## using statement

# when not defined(gl_Es_Version_20):
#   discard
# when not defined(gl_Es_Version_20):
#   discard
# when not defined(gl_Es_Version_20):
#   discard
# when not defined(gl_Es_Version_20):
#   discard
# when not defined(gl_Es_Version_20):
#   discard
## ! OpenGL 1.4 core based on 1.3 version.

type
  OpenGlGlCore14* = OpenGlTmplCore14[OpenGlGlCore13]

## ! OpenGL 1.4 without deprecated entry points.

type
  OpenGlGlCore14Fwd* = OpenGlTmplCore14[OpenGlGlCore13Fwd]


