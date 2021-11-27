##  Created on: 2005-04-18
##  Created by: Eugeny NAPALKOV <eugeny.napalkov@opencascade.com>
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of Message_Messenger"
discard "forward decl of BinXCAFDrivers_DocumentRetrievalDriver"
discard "forward decl of BinXCAFDrivers_DocumentRetrievalDriver"
type
  HandleC1C1* = Handle[BinXCAFDriversDocumentRetrievalDriver]
  BinXCAFDriversDocumentRetrievalDriver* {.
      importcpp: "BinXCAFDrivers_DocumentRetrievalDriver",
      header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx", bycopy.} = object of BinDriversDocumentRetrievalDriver ##
                                                                                                            ## !
                                                                                                            ## Constructor


proc constructBinXCAFDriversDocumentRetrievalDriver*(): BinXCAFDriversDocumentRetrievalDriver {.
    constructor, importcpp: "BinXCAFDrivers_DocumentRetrievalDriver(@)",
    header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
proc attributeDrivers*(this: var BinXCAFDriversDocumentRetrievalDriver;
                      theMsgDriver: Handle[MessageMessenger]): Handle[
    BinMDF_ADriverTable] {.importcpp: "AttributeDrivers",
                          header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
type
  BinXCAFDriversDocumentRetrievalDriverbaseType* = BinDriversDocumentRetrievalDriver

proc getTypeName*(): cstring {.importcpp: "BinXCAFDrivers_DocumentRetrievalDriver::get_type_name(@)", header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "BinXCAFDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
proc dynamicType*(this: BinXCAFDriversDocumentRetrievalDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinXCAFDrivers_DocumentRetrievalDriver.hxx".}
























