##  Created on: 2002-10-29
##  Created by: Michael SAZONOV
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

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_GUID"
discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of BinDrivers_DocumentStorageDriver"
discard "forward decl of BinDrivers_DocumentRetrievalDriver"
discard "forward decl of TDocStd_Application"
type
  BinDrivers* {.importcpp: "BinDrivers", header: "BinDrivers.hxx", bycopy.} = object


proc factory*(theGUID: StandardGUID): Handle[StandardTransient] {.
    importcpp: "BinDrivers::Factory(@)", header: "BinDrivers.hxx".}
proc defineFormat*(theApp: Handle[TDocStdApplication]) {.
    importcpp: "BinDrivers::DefineFormat(@)", header: "BinDrivers.hxx".}
proc attributeDrivers*(msgDrv: Handle[MessageMessenger]): Handle[
    BinMDF_ADriverTable] {.importcpp: "BinDrivers::AttributeDrivers(@)",
                          header: "BinDrivers.hxx".}
proc storageVersion*(): TCollectionAsciiString {.
    importcpp: "BinDrivers::StorageVersion(@)", header: "BinDrivers.hxx".}

























