##  Created on: 1993-07-23
##  Created by: Martine LANGLOIS
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

discard "forward decl of StepShape_FacetedBrepAndBrepWithVoids"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Solid"
discard "forward decl of Transfer_FinderProcess"
type
  TopoDSToStepMakeFacetedBrepAndBrepWithVoids* {.
      importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids",
      header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx", bycopy.} = object of TopoDSToStepRoot


proc `new`*(this: var TopoDSToStepMakeFacetedBrepAndBrepWithVoids; theSize: csize_t): pointer {.
    importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids::operator new",
    header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}
proc `delete`*(this: var TopoDSToStepMakeFacetedBrepAndBrepWithVoids;
              theAddress: pointer) {.importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids::operator delete", header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}
proc `new[]`*(this: var TopoDSToStepMakeFacetedBrepAndBrepWithVoids;
             theSize: csize_t): pointer {.importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids::operator new[]", header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}
proc `delete[]`*(this: var TopoDSToStepMakeFacetedBrepAndBrepWithVoids;
                theAddress: pointer) {.importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids::operator delete[]", header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}
proc `new`*(this: var TopoDSToStepMakeFacetedBrepAndBrepWithVoids; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids::operator new", header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}
proc `delete`*(this: var TopoDSToStepMakeFacetedBrepAndBrepWithVoids; a2: pointer;
              a3: pointer) {.importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids::operator delete", header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}
proc constructTopoDSToStepMakeFacetedBrepAndBrepWithVoids*(s: TopoDS_Solid;
    fp: Handle[TransferFinderProcess];
    theProgress: MessageProgressRange = messageProgressRange()): TopoDSToStepMakeFacetedBrepAndBrepWithVoids {.
    constructor, importcpp: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids(@)",
    header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}
proc value*(this: TopoDSToStepMakeFacetedBrepAndBrepWithVoids): Handle[
    StepShapeFacetedBrepAndBrepWithVoids] {.noSideEffect, importcpp: "Value",
    header: "TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx".}