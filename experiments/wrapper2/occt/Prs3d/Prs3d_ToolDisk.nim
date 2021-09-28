##  Created on: 2016-02-04
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Standard presentation algorithm that outputs graphical primitives for disk surface.

type
  Prs3dToolDisk* {.importcpp: "Prs3d_ToolDisk", header: "Prs3d_ToolDisk.hxx", bycopy.} = object of Prs3dToolQuadric ##
                                                                                                          ## !
                                                                                                          ## Generate
                                                                                                          ## primitives
                                                                                                          ## for
                                                                                                          ## 3D
                                                                                                          ## quadric
                                                                                                          ## surface.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theInnerRadius
                                                                                                          ## [in]
                                                                                                          ## inner
                                                                                                          ## disc
                                                                                                          ## radius
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theOuterRadius
                                                                                                          ## [in]
                                                                                                          ## outer
                                                                                                          ## disc
                                                                                                          ## radius
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbSlices
                                                                                                          ## [in]
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## slices
                                                                                                          ## within
                                                                                                          ## U
                                                                                                          ## parameter
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbStacks
                                                                                                          ## [in]
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## stacks
                                                                                                          ## within
                                                                                                          ## V
                                                                                                          ## parameter
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theTrsf
                                                                                                          ## [in]
                                                                                                          ## optional
                                                                                                          ## transformation
                                                                                                          ## to
                                                                                                          ## apply
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @return
                                                                                                          ## generated
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Initializes
                                                                                                          ## the
                                                                                                          ## algorithm
                                                                                                          ## creating
                                                                                                          ## a
                                                                                                          ## disk.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theInnerRadius
                                                                                                          ## [in]
                                                                                                          ## inner
                                                                                                          ## disk
                                                                                                          ## radius
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theOuterRadius
                                                                                                          ## [in]
                                                                                                          ## outer
                                                                                                          ## disk
                                                                                                          ## radius
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbSlices
                                                                                                          ## [in]
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## slices
                                                                                                          ## within
                                                                                                          ## U
                                                                                                          ## parameter
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbStacks
                                                                                                          ## [in]
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## stacks
                                                                                                          ## within
                                                                                                          ## V
                                                                                                          ## parameter
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Computes
                                                                                                          ## vertex
                                                                                                          ## at
                                                                                                          ## given
                                                                                                          ## parameter
                                                                                                          ## location
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## surface.
    ## !< Inner disk radius
    ## !< Outer disk radius
    ## !< Start angle in counter clockwise order
    ## !< End   angle in counter clockwise order


proc create*(theInnerRadius: cfloat; theOuterRadius: cfloat; theNbSlices: cint;
            theNbStacks: cint; theTrsf: Trsf): Handle[Graphic3dArrayOfTriangles] {.
    importcpp: "Prs3d_ToolDisk::Create(@)", header: "Prs3d_ToolDisk.hxx".}
proc constructPrs3dToolDisk*(theInnerRadius: cfloat; theOuterRadius: cfloat;
                            theNbSlices: cint; theNbStacks: cint): Prs3dToolDisk {.
    constructor, importcpp: "Prs3d_ToolDisk(@)", header: "Prs3d_ToolDisk.hxx".}
proc setAngleRange*(this: var Prs3dToolDisk; theStartAngle: cfloat;
                   theEndAngle: cfloat) {.importcpp: "SetAngleRange",
                                        header: "Prs3d_ToolDisk.hxx".}

























