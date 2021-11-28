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
discard "forward decl of gp_Elips"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
type
  MakeEllipse* {.importcpp: "GC_MakeEllipse", header: "GC_MakeEllipse.hxx", bycopy.} = object of Root ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## ellipse
                                                                                            ## from
                                                                                            ## a
                                                                                            ## non
                                                                                            ## persistent
                                                                                            ## ellipse
                                                                                            ## E
                                                                                            ## from
                                                                                            ## package
                                                                                            ## gp
                                                                                            ## by
                                                                                            ## its
                                                                                            ## conversion.


proc newMakeEllipse*(e: Elips): MakeEllipse {.cdecl, constructor,
    importcpp: "GC_MakeEllipse(@)", dynlib: tkgeombase.}
proc newMakeEllipse*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): MakeEllipse {.
    cdecl, constructor, importcpp: "GC_MakeEllipse(@)", dynlib: tkgeombase.}
proc newMakeEllipse*(s1: Pnt; s2: Pnt; center: Pnt): MakeEllipse {.cdecl, constructor,
    importcpp: "GC_MakeEllipse(@)", dynlib: tkgeombase.}
proc value*(this: MakeEllipse): Handle[GeomEllipse] {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeombase.}
converter `constopencascade`*(this: MakeEllipse): Handle[GeomEllipse] {.
    noSideEffect, cdecl, importcpp: "GC_MakeEllipse::operator constopencascade",
    dynlib: tkgeombase.}