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
discard "forward decl of gp_Circ"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
type
  MakeCircle* {.importcpp: "GC_MakeCircle", header: "GC_MakeCircle.hxx", bycopy.} = object of Root ##
                                                                                         ## !
                                                                                         ## creates
                                                                                         ## a
                                                                                         ## circle
                                                                                         ## from
                                                                                         ## a
                                                                                         ## non
                                                                                         ## persistent
                                                                                         ## circle
                                                                                         ## C
                                                                                         ## by
                                                                                         ## its
                                                                                         ## conversion.


proc newMakeCircle*(c: Circ): MakeCircle {.cdecl, constructor,
                                       importcpp: "GC_MakeCircle(@)",
                                       dynlib: tkgeombase.}
proc newMakeCircle*(a2: Ax2; radius: cfloat): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", dynlib: tkgeombase.}
proc newMakeCircle*(circ: Circ; dist: cfloat): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", dynlib: tkgeombase.}
proc newMakeCircle*(circ: Circ; point: Pnt): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", dynlib: tkgeombase.}
proc newMakeCircle*(p1: Pnt; p2: Pnt; p3: Pnt): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", dynlib: tkgeombase.}
proc newMakeCircle*(center: Pnt; norm: Dir; radius: cfloat): MakeCircle {.cdecl,
    constructor, importcpp: "GC_MakeCircle(@)", dynlib: tkgeombase.}
proc newMakeCircle*(center: Pnt; ptAxis: Pnt; radius: cfloat): MakeCircle {.cdecl,
    constructor, importcpp: "GC_MakeCircle(@)", dynlib: tkgeombase.}
proc newMakeCircle*(axis: Ax1; radius: cfloat): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", dynlib: tkgeombase.}
proc value*(this: MakeCircle): Handle[GeomCircle] {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeombase.}
converter `constopencascade`*(this: MakeCircle): Handle[GeomCircle] {.noSideEffect,
    cdecl, importcpp: "GC_MakeCircle::operator constopencascade",
    dynlib: tkgeombase.}