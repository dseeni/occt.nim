##  Created on: 1992-09-28
##  Created by: Remi GILET
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
type
  MakeSegment* {.importcpp: "GC_MakeSegment", header: "GC_MakeSegment.hxx", bycopy.} = object of Root ##
                                                                                            ## !
                                                                                            ## Make
                                                                                            ## a
                                                                                            ## segment
                                                                                            ## of
                                                                                            ## Line
                                                                                            ## from
                                                                                            ## the
                                                                                            ## 2
                                                                                            ## points
                                                                                            ## <P1>
                                                                                            ## and
                                                                                            ## <P2>.
                                                                                            ##
                                                                                            ## !
                                                                                            ## It
                                                                                            ## returns
                                                                                            ## NullObject
                                                                                            ## if
                                                                                            ## <P1>
                                                                                            ## and
                                                                                            ## <P2>
                                                                                            ## are
                                                                                            ## confused.


proc newMakeSegment*(p1: Pnt; p2: Pnt): MakeSegment {.cdecl, constructor,
    importcpp: "GC_MakeSegment(@)", dynlib: tkgeombase.}
proc newMakeSegment*(line: Lin; u1: cfloat; u2: cfloat): MakeSegment {.cdecl,
    constructor, importcpp: "GC_MakeSegment(@)", dynlib: tkgeombase.}
proc newMakeSegment*(line: Lin; point: Pnt; ulast: cfloat): MakeSegment {.cdecl,
    constructor, importcpp: "GC_MakeSegment(@)", dynlib: tkgeombase.}
proc newMakeSegment*(line: Lin; p1: Pnt; p2: Pnt): MakeSegment {.cdecl, constructor,
    importcpp: "GC_MakeSegment(@)", dynlib: tkgeombase.}
proc value*(this: MakeSegment): HandleGeomTrimmedCurve {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeombase.}
converter `constopencascade`*(this: MakeSegment): HandleGeomTrimmedCurve {.
    noSideEffect, cdecl, importcpp: "GC_MakeSegment::operator constopencascade",
    dynlib: tkgeombase.}