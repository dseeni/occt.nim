import interface_types
import ../../tkernel/standard/standard_types







##  Created on: 1993-02-04
##  Created by: Christian CAILLET
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





proc caseNum*(this: InterfaceReaderModule; data: Handle[InterfaceFileReaderData];
             num: cint): cint {.noSideEffect, cdecl, importcpp: "CaseNum",
                             header: "Interface_ReaderModule.hxx".}
proc read*(this: InterfaceReaderModule; casenum: cint;
          data: Handle[InterfaceFileReaderData]; num: cint;
          ach: var Handle[InterfaceCheck]; ent: Handle[StandardTransient]) {.
    noSideEffect, cdecl, importcpp: "Read", header: "Interface_ReaderModule.hxx".}
proc newRead*(this: InterfaceReaderModule; casenum: cint;
             data: Handle[InterfaceFileReaderData]; num: cint;
             ach: var Handle[InterfaceCheck]; ent: var Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "NewRead", header: "Interface_ReaderModule.hxx".}


