##  Created on: 1993-04-08
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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyControl"
type
  HandleInterfaceCopyControl* = Handle[InterfaceCopyControl]

## ! This deferred class describes the services required by
## ! CopyTool to work. They are very simple and correspond
## ! basically to the management of an indexed map.
## ! But they can be provided by various classes which can
## ! control a Transfer. Each Starting Entity have at most
## ! one Result (Mapping one-one)

type
  InterfaceCopyControl* {.importcpp: "Interface_CopyControl",
                         header: "Interface_CopyControl.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Clears
                                                                                              ## List
                                                                                              ## of
                                                                                              ## Copy
                                                                                              ## Results.
                                                                                              ## Gets
                                                                                              ## Ready
                                                                                              ## to
                                                                                              ## begin
                                                                                              ## another
                                                                                              ## Copy
                                                                                              ##
                                                                                              ## !
                                                                                              ## Process.


proc clear*(this: var InterfaceCopyControl) {.cdecl, importcpp: "Clear",
    header: "Interface_CopyControl.hxx".}
proc `bind`*(this: var InterfaceCopyControl; ent: Handle[StandardTransient];
            res: Handle[StandardTransient]) {.cdecl, importcpp: "Bind",
    header: "Interface_CopyControl.hxx".}
proc search*(this: InterfaceCopyControl; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "Search", header: "Interface_CopyControl.hxx".}