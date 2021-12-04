##  Created on: 1997-03-06
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of AIS_TypeFilter"
type
  HandleAIS_TypeFilter* = Handle[AIS_TypeFilter]

## ! Selects Interactive Objects through their types. The
## ! filter questions each Interactive Object in local context
## ! to determine whether it has an non-null owner, and if
## ! so, whether it is of the desired type. If the object
## ! returns true in each case, it is kept. If not, it is rejected.
## ! By default, the   interactive object has a None   type
## ! and a signature of 0. A filter for type specifies a
## ! choice of type out of a range at any level enumerated
## ! for type or kind. The choice could be for kind of
## ! interactive object, of dimension, of unit, or type of axis,
## ! plane or attribute.
## ! If you want to give a particular type and signature to
## ! your Interactive Object, you must redefine two virtual
## ! methods:   Type and Signature.
## ! This filter is used in both Neutral Point and open local contexts.
## ! In the Collector viewer, you can only locate
## ! Interactive Objects which answer positively to the
## ! positioned filters when a local context is open.
## ! Warning
## ! When you close a local context, all temporary
## ! interactive objects are deleted, all selection modes
## ! concerning the context are cancelled, and all content
## ! filters are emptied.

type
  AIS_TypeFilter* {.importcpp: "AIS_TypeFilter", header: "AIS_TypeFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                                          ## !
                                                                                                          ## Initializes
                                                                                                          ## filter
                                                                                                          ## for
                                                                                                          ## type,
                                                                                                          ## aGivenKind.


proc newAIS_TypeFilter*(aGivenKind: AIS_KindOfInteractive): AIS_TypeFilter {.cdecl,
    constructor, importcpp: "AIS_TypeFilter(@)", header: "AIS_TypeFilter.hxx".}
proc isOk*(this: AIS_TypeFilter; anobj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, cdecl, importcpp: "IsOk", header: "AIS_TypeFilter.hxx".}