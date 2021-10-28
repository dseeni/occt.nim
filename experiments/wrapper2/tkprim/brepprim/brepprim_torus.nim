##  Created on: 1992-11-05
##  Created by: Remi LEQUETTE
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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepPrimTorus* {.importcpp: "BRepPrim_Torus", header: "BRepPrim_Torus.hxx", bycopy.} = object of BRepPrimRevolution ##
                                                                                                            ## !
                                                                                                            ## the
                                                                                                            ## STEP
                                                                                                            ## definition
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Position
                                                                                                            ## :
                                                                                                            ## center
                                                                                                            ## and
                                                                                                            ## axes
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Major,
                                                                                                            ## Minor
                                                                                                            ## :
                                                                                                            ## Radii
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Errors
                                                                                                            ## :
                                                                                                            ## Major
                                                                                                            ## <
                                                                                                            ## Resolution
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Minor
                                                                                                            ## <
                                                                                                            ## Resolution
    ## !< distance from the center of the pipe to the center of the torus
    ## !< radius of the pipe


proc newBRepPrimTorus*(position: Ax2; major: cfloat; minor: cfloat): BRepPrimTorus {.
    cdecl, constructor, importcpp: "BRepPrim_Torus(@)", dynlib: tkprim.}
proc newBRepPrimTorus*(major: cfloat; minor: cfloat): BRepPrimTorus {.cdecl,
    constructor, importcpp: "BRepPrim_Torus(@)", dynlib: tkprim.}
proc newBRepPrimTorus*(center: Pnt; major: cfloat; minor: cfloat): BRepPrimTorus {.
    cdecl, constructor, importcpp: "BRepPrim_Torus(@)", dynlib: tkprim.}
proc makeEmptyLateralFace*(this: BRepPrimTorus): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "MakeEmptyLateralFace", dynlib: tkprim.}