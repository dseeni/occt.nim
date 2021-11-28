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


proc newBOPAlgoBuilderFace*(): BOPAlgoBuilderFace {.cdecl, constructor,
    importcpp: "BOPAlgo_BuilderFace(@)", dynlib: tkbo.}
proc destroyBOPAlgoBuilderFace*(this: var BOPAlgoBuilderFace) {.cdecl,
    importcpp: "#.~BOPAlgo_BuilderFace()", dynlib: tkbo.}
proc newBOPAlgoBuilderFace*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoBuilderFace {.
    cdecl, constructor, importcpp: "BOPAlgo_BuilderFace(@)", dynlib: tkbo.}
proc setFace*(this: var BOPAlgoBuilderFace; theFace: TopoDS_Face) {.cdecl,
    importcpp: "SetFace", dynlib: tkbo.}
proc face*(this: BOPAlgoBuilderFace): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkbo.}
proc perform*(this: var BOPAlgoBuilderFace) {.cdecl, importcpp: "Perform", dynlib: tkbo.}
proc orientation*(this: BOPAlgoBuilderFace): TopAbsOrientation {.noSideEffect, cdecl,
    importcpp: "Orientation", dynlib: tkbo.}