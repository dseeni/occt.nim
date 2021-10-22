##  Created on: 2017-06-27
##  Created by: Andrey Betenev
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

## ! Alert object storing TopoDS shape in its field

type
  TopoDS_AlertWithShape* {.importcpp: "TopoDS_AlertWithShape",
                          header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of MessageAlert ##
                                                                                          ## !
                                                                                          ## Constructor
                                                                                          ## with
                                                                                          ## shape
                                                                                          ## argument


proc newTopoDS_AlertWithShape*(theShape: TopoDS_Shape): TopoDS_AlertWithShape {.
    cdecl, constructor, importcpp: "TopoDS_AlertWithShape(@)", dynlib: tkernel.}
proc getShape*(this: TopoDS_AlertWithShape): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape", dynlib: tkernel.}
proc setShape*(this: var TopoDS_AlertWithShape; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetShape", dynlib: tkernel.}
proc supportsMerge*(this: TopoDS_AlertWithShape): bool {.noSideEffect, cdecl,
    importcpp: "SupportsMerge", dynlib: tkernel.}
proc merge*(this: var TopoDS_AlertWithShape; theTarget: Handle[MessageAlert]): bool {.
    cdecl, importcpp: "Merge", dynlib: tkernel.}
## ! Helper macro allowing to define alert with shape argument in one line of code

template define_Alert_With_Shape*(alert: untyped): void =
  type
    Alert* {.importcpp: "Alert", header: "TopoDS_AlertWithShape.hxx", bycopy.} = object of TopoDS_AlertWithShape

  proc newAlert*(theShape: TopoDS_Shape): Alert {.cdecl, constructor,
      importcpp: "Alert(@)", dynlib: tkernel.}
  type
    AlertbaseType* = TopoDS_AlertWithShape