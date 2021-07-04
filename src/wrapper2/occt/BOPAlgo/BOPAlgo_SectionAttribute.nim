##  Created on: 2002-03-04
##  Created by: Michael KLOKOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

import
  ../Standard/Standard_Boolean

## ! Class is a container of the flags used
## ! by intersection algorithm

type
  BOPAlgo_SectionAttribute* {.importcpp: "BOPAlgo_SectionAttribute",
                             header: "BOPAlgo_SectionAttribute.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Default
                                                                                  ## constructor


proc constructBOPAlgo_SectionAttribute*(): BOPAlgo_SectionAttribute {.constructor,
    importcpp: "BOPAlgo_SectionAttribute(@)",
    header: "BOPAlgo_SectionAttribute.hxx".}
proc constructBOPAlgo_SectionAttribute*(theAproximation: Standard_Boolean;
                                       thePCurveOnS1: Standard_Boolean;
                                       thePCurveOnS2: Standard_Boolean): BOPAlgo_SectionAttribute {.
    constructor, importcpp: "BOPAlgo_SectionAttribute(@)",
    header: "BOPAlgo_SectionAttribute.hxx".}
proc Approximation*(this: var BOPAlgo_SectionAttribute; theApprox: Standard_Boolean) {.
    importcpp: "Approximation", header: "BOPAlgo_SectionAttribute.hxx".}
proc PCurveOnS1*(this: var BOPAlgo_SectionAttribute; thePCurveOnS1: Standard_Boolean) {.
    importcpp: "PCurveOnS1", header: "BOPAlgo_SectionAttribute.hxx".}
proc PCurveOnS2*(this: var BOPAlgo_SectionAttribute; thePCurveOnS2: Standard_Boolean) {.
    importcpp: "PCurveOnS2", header: "BOPAlgo_SectionAttribute.hxx".}
proc Approximation*(this: BOPAlgo_SectionAttribute): Standard_Boolean {.
    noSideEffect, importcpp: "Approximation",
    header: "BOPAlgo_SectionAttribute.hxx".}
proc PCurveOnS1*(this: BOPAlgo_SectionAttribute): Standard_Boolean {.noSideEffect,
    importcpp: "PCurveOnS1", header: "BOPAlgo_SectionAttribute.hxx".}
proc PCurveOnS2*(this: BOPAlgo_SectionAttribute): Standard_Boolean {.noSideEffect,
    importcpp: "PCurveOnS2", header: "BOPAlgo_SectionAttribute.hxx".}