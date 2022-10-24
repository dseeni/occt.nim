import ifselect_types

##  Created on: 1995-10-25
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectSent"




proc newIFSelectSelectSent*(sentcount: cint = 1; atleast: bool = true): IFSelectSelectSent {.
    cdecl, constructor, importcpp: "IFSelect_SelectSent(@)", header: "IFSelect_SelectSent.hxx".}
proc sentCount*(this: IFSelectSelectSent): cint {.noSideEffect, cdecl,
    importcpp: "SentCount", header: "IFSelect_SelectSent.hxx".}
proc atLeast*(this: IFSelectSelectSent): bool {.noSideEffect, cdecl,
    importcpp: "AtLeast", header: "IFSelect_SelectSent.hxx".}
proc rootResult*(this: IFSelectSelectSent; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectSent.hxx".}
proc sort*(this: IFSelectSelectSent; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect, cdecl,
    importcpp: "Sort", header: "IFSelect_SelectSent.hxx".}
proc extractLabel*(this: IFSelectSelectSent): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "ExtractLabel", header: "IFSelect_SelectSent.hxx".}
