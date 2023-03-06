import ../selectmgr/selectmgr_types
import ../../tkernel/standard/standard_types
import ais_types





##  Created on: 1997-03-04
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





proc newAIS_SignatureFilter*(aGivenKind: AIS_KindOfInteractive;
                            aGivenSignature: cint): AIS_SignatureFilter {.cdecl,
    constructor, importcpp: "AIS_SignatureFilter(@)", header: "AIS_SignatureFilter.hxx".}
proc isOk*(this: AIS_SignatureFilter; anobj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, cdecl, importcpp: "IsOk", header: "AIS_SignatureFilter.hxx".}

