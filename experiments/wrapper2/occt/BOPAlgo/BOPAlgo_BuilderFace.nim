##  Created by: Peter KURNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

discard "forward decl of TopoDS_Face"
type
  BOPAlgoBuilderFace* {.importcpp: "BOPAlgo_BuilderFace",
                       header: "BOPAlgo_BuilderFace.hxx", bycopy.} = object of BOPAlgoBuilderArea ##
                                                                                           ## !
                                                                                           ## Collect
                                                                                           ## the
                                                                                           ## edges
                                                                                           ## that
                                                                                           ##
                                                                                           ## !
                                                                                           ## a)
                                                                                           ## are
                                                                                           ## internal
                                                                                           ##
                                                                                           ## !
                                                                                           ## b)
                                                                                           ## are
                                                                                           ## the
                                                                                           ## same
                                                                                           ## and
                                                                                           ## have
                                                                                           ## different
                                                                                           ## orientation


proc constructBOPAlgoBuilderFace*(): BOPAlgoBuilderFace {.constructor,
    importcpp: "BOPAlgo_BuilderFace(@)", header: "BOPAlgo_BuilderFace.hxx".}
proc destroyBOPAlgoBuilderFace*(this: var BOPAlgoBuilderFace) {.
    importcpp: "#.~BOPAlgo_BuilderFace()", header: "BOPAlgo_BuilderFace.hxx".}
proc constructBOPAlgoBuilderFace*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoBuilderFace {.
    constructor, importcpp: "BOPAlgo_BuilderFace(@)",
    header: "BOPAlgo_BuilderFace.hxx".}
proc setFace*(this: var BOPAlgoBuilderFace; theFace: TopoDS_Face) {.
    importcpp: "SetFace", header: "BOPAlgo_BuilderFace.hxx".}
proc face*(this: BOPAlgoBuilderFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BOPAlgo_BuilderFace.hxx".}
proc perform*(this: var BOPAlgoBuilderFace) {.importcpp: "Perform",
    header: "BOPAlgo_BuilderFace.hxx".}
proc orientation*(this: BOPAlgoBuilderFace): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "BOPAlgo_BuilderFace.hxx".}
