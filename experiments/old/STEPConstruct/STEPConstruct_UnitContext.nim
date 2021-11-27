##  Created on: 1996-01-18
##  Created by: Frederic MAUPAS
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepRepr_GlobalUncertaintyAssignedContext"
discard "forward decl of StepBasic_SiUnit"
type
  STEPConstructUnitContext* {.importcpp: "STEPConstruct_UnitContext",
                             header: "STEPConstruct_UnitContext.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Fills
                                                                                   ## numerical
                                                                                   ## equivalent
                                                                                   ## of
                                                                                   ## SiUnitName
                                                                                   ## (in
                                                                                   ## SI
                                                                                   ## value)
                                                                                   ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## False
                                                                                   ## if
                                                                                   ## name
                                                                                   ## SiUnit
                                                                                   ## Name
                                                                                   ## not
                                                                                   ## recognized


proc `new`*(this: var STEPConstructUnitContext; theSize: csize_t): pointer {.
    importcpp: "STEPConstruct_UnitContext::operator new",
    header: "STEPConstruct_UnitContext.hxx".}
proc `delete`*(this: var STEPConstructUnitContext; theAddress: pointer) {.
    importcpp: "STEPConstruct_UnitContext::operator delete",
    header: "STEPConstruct_UnitContext.hxx".}
proc `new[]`*(this: var STEPConstructUnitContext; theSize: csize_t): pointer {.
    importcpp: "STEPConstruct_UnitContext::operator new[]",
    header: "STEPConstruct_UnitContext.hxx".}
proc `delete[]`*(this: var STEPConstructUnitContext; theAddress: pointer) {.
    importcpp: "STEPConstruct_UnitContext::operator delete[]",
    header: "STEPConstruct_UnitContext.hxx".}
proc `new`*(this: var STEPConstructUnitContext; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "STEPConstruct_UnitContext::operator new",
    header: "STEPConstruct_UnitContext.hxx".}
proc `delete`*(this: var STEPConstructUnitContext; a2: pointer; a3: pointer) {.
    importcpp: "STEPConstruct_UnitContext::operator delete",
    header: "STEPConstruct_UnitContext.hxx".}
proc constructSTEPConstructUnitContext*(): STEPConstructUnitContext {.constructor,
    importcpp: "STEPConstruct_UnitContext(@)",
    header: "STEPConstruct_UnitContext.hxx".}
proc init*(this: var STEPConstructUnitContext; tol3d: StandardReal) {.
    importcpp: "Init", header: "STEPConstruct_UnitContext.hxx".}
proc isDone*(this: STEPConstructUnitContext): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "STEPConstruct_UnitContext.hxx".}
proc value*(this: STEPConstructUnitContext): Handle[
    StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx] {.
    noSideEffect, importcpp: "Value", header: "STEPConstruct_UnitContext.hxx".}
proc computeFactors*(this: var STEPConstructUnitContext;
                    aContext: Handle[StepReprGlobalUnitAssignedContext]): int {.
    importcpp: "ComputeFactors", header: "STEPConstruct_UnitContext.hxx".}
proc computeFactors*(this: var STEPConstructUnitContext;
                    aUnit: Handle[StepBasicNamedUnit]): int {.
    importcpp: "ComputeFactors", header: "STEPConstruct_UnitContext.hxx".}
proc computeTolerance*(this: var STEPConstructUnitContext; aContext: Handle[
    StepReprGlobalUncertaintyAssignedContext]): int {.
    importcpp: "ComputeTolerance", header: "STEPConstruct_UnitContext.hxx".}
proc lengthFactor*(this: STEPConstructUnitContext): StandardReal {.noSideEffect,
    importcpp: "LengthFactor", header: "STEPConstruct_UnitContext.hxx".}
proc planeAngleFactor*(this: STEPConstructUnitContext): StandardReal {.noSideEffect,
    importcpp: "PlaneAngleFactor", header: "STEPConstruct_UnitContext.hxx".}
proc solidAngleFactor*(this: STEPConstructUnitContext): StandardReal {.noSideEffect,
    importcpp: "SolidAngleFactor", header: "STEPConstruct_UnitContext.hxx".}
proc uncertainty*(this: STEPConstructUnitContext): StandardReal {.noSideEffect,
    importcpp: "Uncertainty", header: "STEPConstruct_UnitContext.hxx".}
proc areaFactor*(this: STEPConstructUnitContext): StandardReal {.noSideEffect,
    importcpp: "AreaFactor", header: "STEPConstruct_UnitContext.hxx".}
proc volumeFactor*(this: STEPConstructUnitContext): StandardReal {.noSideEffect,
    importcpp: "VolumeFactor", header: "STEPConstruct_UnitContext.hxx".}
proc hasUncertainty*(this: STEPConstructUnitContext): StandardBoolean {.
    noSideEffect, importcpp: "HasUncertainty",
    header: "STEPConstruct_UnitContext.hxx".}
proc lengthDone*(this: STEPConstructUnitContext): StandardBoolean {.noSideEffect,
    importcpp: "LengthDone", header: "STEPConstruct_UnitContext.hxx".}
proc planeAngleDone*(this: STEPConstructUnitContext): StandardBoolean {.
    noSideEffect, importcpp: "PlaneAngleDone",
    header: "STEPConstruct_UnitContext.hxx".}
proc solidAngleDone*(this: STEPConstructUnitContext): StandardBoolean {.
    noSideEffect, importcpp: "SolidAngleDone",
    header: "STEPConstruct_UnitContext.hxx".}
proc areaDone*(this: STEPConstructUnitContext): StandardBoolean {.noSideEffect,
    importcpp: "AreaDone", header: "STEPConstruct_UnitContext.hxx".}
proc volumeDone*(this: STEPConstructUnitContext): StandardBoolean {.noSideEffect,
    importcpp: "VolumeDone", header: "STEPConstruct_UnitContext.hxx".}
proc statusMessage*(this: STEPConstructUnitContext; status: int): StandardCString {.
    noSideEffect, importcpp: "StatusMessage",
    header: "STEPConstruct_UnitContext.hxx".}
proc convertSiPrefix*(aPrefix: StepBasicSiPrefix): StandardReal {.
    importcpp: "STEPConstruct_UnitContext::ConvertSiPrefix(@)",
    header: "STEPConstruct_UnitContext.hxx".}