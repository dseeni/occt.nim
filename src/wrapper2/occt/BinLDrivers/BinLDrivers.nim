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

import
  ../Standard/Standard_Handle

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_GUID"
discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of BinLDrivers_DocumentStorageDriver"
discard "forward decl of BinLDrivers_DocumentRetrievalDriver"
discard "forward decl of BinLDrivers_DocumentSection"
discard "forward decl of TDocStd_Application"
type
  BinLDrivers* {.importcpp: "BinLDrivers", header: "BinLDrivers.hxx", bycopy.} = object


proc Factory*(theGUID: Standard_GUID): handle[Standard_Transient] {.
    importcpp: "BinLDrivers::Factory(@)", header: "BinLDrivers.hxx".}
proc DefineFormat*(theApp: handle[TDocStd_Application]) {.
    importcpp: "BinLDrivers::DefineFormat(@)", header: "BinLDrivers.hxx".}
proc AttributeDrivers*(MsgDrv: handle[Message_Messenger]): handle[
    BinMDF_ADriverTable] {.importcpp: "BinLDrivers::AttributeDrivers(@)",
                          header: "BinLDrivers.hxx".}
proc StorageVersion*(): TCollection_AsciiString {.
    importcpp: "BinLDrivers::StorageVersion(@)", header: "BinLDrivers.hxx".}