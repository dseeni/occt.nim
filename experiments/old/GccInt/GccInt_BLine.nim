##  Created on: 1991-10-04
##  Created by: Remi GILET
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

discard "forward decl of gp_Lin2d"
discard "forward decl of GccInt_BLine"
discard "forward decl of GccInt_BLine"
type
  HandleC1C1* = Handle[GccIntBLine]

## ! Describes a line as a bisecting curve between two 2D
## ! geometric objects (such as lines, circles or points).

type
  GccIntBLine* {.importcpp: "GccInt_BLine", header: "GccInt_BLine.hxx", bycopy.} = object of GccIntBisec ##
                                                                                               ## !
                                                                                               ## Constructs
                                                                                               ## a
                                                                                               ## bisecting
                                                                                               ## line
                                                                                               ## whose
                                                                                               ## geometry
                                                                                               ## is
                                                                                               ## the
                                                                                               ## 2D
                                                                                               ## line
                                                                                               ## Line.


proc constructGccIntBLine*(line: Lin2d): GccIntBLine {.constructor,
    importcpp: "GccInt_BLine(@)", header: "GccInt_BLine.hxx".}
proc line*(this: GccIntBLine): Lin2d {.noSideEffect, importcpp: "Line",
                                   header: "GccInt_BLine.hxx".}
proc arcType*(this: GccIntBLine): GccIntIType {.noSideEffect, importcpp: "ArcType",
    header: "GccInt_BLine.hxx".}
type
  GccIntBLinebaseType* = GccIntBisec

proc getTypeName*(): cstring {.importcpp: "GccInt_BLine::get_type_name(@)",
                            header: "GccInt_BLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GccInt_BLine::get_type_descriptor(@)", header: "GccInt_BLine.hxx".}
proc dynamicType*(this: GccIntBLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GccInt_BLine.hxx".}
























