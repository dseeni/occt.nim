##  Created on: 2016-04-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

## ! Structure storing meshing parameters

type
  IMeshToolsParameters* {.importcpp: "IMeshTools_Parameters",
                         header: "IMeshTools_Parameters.hxx", bycopy.} = object ## !
                                                                           ## Default
                                                                           ## constructor
    meshAlgo* {.importc: "MeshAlgo".}: IMeshToolsMeshAlgoType ## ! Angular deflection used to tessellate the boundary edges
    angle* {.importc: "Angle".}: StandardReal ## !Linear deflection used to tessellate the boundary edges
    deflection* {.importc: "Deflection".}: StandardReal ## ! Angular deflection used to tessellate the face interior
    angleInterior* {.importc: "AngleInterior".}: StandardReal ## ! Linear deflection used to tessellate the face interior
    deflectionInterior* {.importc: "DeflectionInterior".}: StandardReal ## ! Minimum size parameter limiting size of triangle's edges to prevent
                                                                    ## ! sinking into
                                                                    ## amplification in case of distorted curves and surfaces.
    minSize* {.importc: "MinSize".}: StandardReal ## ! Switches on/off multi-thread computation
    inParallel* {.importc: "InParallel".}: StandardBoolean ## ! Switches on/off relative computation of edge tolerance<br>
                                                       ## ! If true, deflection used for the polygonalisation of each edge will be
                                                       ## ! <defle> * Size of Edge. The deflection used for the faces will be the
                                                       ## ! maximum deflection of their edges.
    relative* {.importc: "Relative".}: StandardBoolean ## ! Mode to take or not to take internal face vertices into account
                                                   ## ! in triangulation process
    internalVerticesMode* {.importc: "InternalVerticesMode".}: StandardBoolean ## !
                                                                           ## Parameter to check the
                                                                           ## deviation of
                                                                           ## triangulation and
                                                                           ## interior of
                                                                           ## ! the face
    controlSurfaceDeflection* {.importc: "ControlSurfaceDeflection".}: StandardBoolean ##
                                                                                   ## !
                                                                                   ## Cleans
                                                                                   ## temporary
                                                                                   ## data
                                                                                   ## model
                                                                                   ## when
                                                                                   ## algorithm
                                                                                   ## is
                                                                                   ## finished.
    cleanModel* {.importc: "CleanModel".}: StandardBoolean ## ! Enables/disables local adjustment of min size depending on edge size.
                                                       ## ! Disabled by default.
    adjustMinSize* {.importc: "AdjustMinSize".}: StandardBoolean ## ! Enables/disables usage of shape tolerances for computing face deflection.
                                                             ## ! Disabled by default.
    forceFaceDeflection* {.importc: "ForceFaceDeflection".}: StandardBoolean ## !
                                                                         ## Allows/forbids the
                                                                         ## decrease of the quality of the
                                                                         ## generated mesh
                                                                         ## ! over the
                                                                         ## existing one.
    allowQualityDecrease* {.importc: "AllowQualityDecrease".}: StandardBoolean


proc constructIMeshToolsParameters*(): IMeshToolsParameters {.constructor,
    importcpp: "IMeshTools_Parameters(@)", header: "IMeshTools_Parameters.hxx".}
proc relMinSize*(): StandardReal {.importcpp: "IMeshTools_Parameters::RelMinSize(@)",
                                header: "IMeshTools_Parameters.hxx".}

