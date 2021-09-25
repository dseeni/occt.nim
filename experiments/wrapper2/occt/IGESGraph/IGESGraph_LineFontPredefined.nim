##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of IGESGraph_LineFontPredefined"
discard "forward decl of IGESGraph_LineFontPredefined"
type
  HandleIGESGraphLineFontPredefined* = Handle[IGESGraphLineFontPredefined]

## ! defines IGESLineFontPredefined, Type <406> Form <19>
## ! in package IGESGraph
## !
## ! Provides the ability to specify a line font pattern
## ! from a predefined list rather than from
## ! Directory Entry Field 4

type
  IGESGraphLineFontPredefined* {.importcpp: "IGESGraph_LineFontPredefined",
                                header: "IGESGraph_LineFontPredefined.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphLineFontPredefined*(): IGESGraphLineFontPredefined {.
    constructor, importcpp: "IGESGraph_LineFontPredefined(@)",
    header: "IGESGraph_LineFontPredefined.hxx".}
proc init*(this: var IGESGraphLineFontPredefined; nbProps: int;
          aLineFontPatternCode: int) {.importcpp: "Init",
                                     header: "IGESGraph_LineFontPredefined.hxx".}
proc nbPropertyValues*(this: IGESGraphLineFontPredefined): int {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESGraph_LineFontPredefined.hxx".}
proc lineFontPatternCode*(this: IGESGraphLineFontPredefined): int {.noSideEffect,
    importcpp: "LineFontPatternCode", header: "IGESGraph_LineFontPredefined.hxx".}
type
  IGESGraphLineFontPredefinedbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_LineFontPredefined::get_type_name(@)",
                            header: "IGESGraph_LineFontPredefined.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_LineFontPredefined::get_type_descriptor(@)",
    header: "IGESGraph_LineFontPredefined.hxx".}
proc dynamicType*(this: IGESGraphLineFontPredefined): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_LineFontPredefined.hxx".}
