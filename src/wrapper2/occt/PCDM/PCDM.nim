##  Created on: 1997-08-01
##  Created by: Jean-Louis Frenkel
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

import
  ../Storage/Storage_BaseDriver, PCDM_TypeOfFileDriver

discard "forward decl of CDM_Document"
discard "forward decl of PCDM_StorageDriver"
discard "forward decl of TCollection_AsciiString"
type
  PCDM* {.importcpp: "PCDM", header: "PCDM.hxx", bycopy.} = object


proc FileDriverType*(aFileName: TCollection_AsciiString;
                    aBaseDriver: var handle[Storage_BaseDriver]): PCDM_TypeOfFileDriver {.
    importcpp: "PCDM::FileDriverType(@)", header: "PCDM.hxx".}
proc FileDriverType*(theIStream: var Standard_IStream;
                    theBaseDriver: var handle[Storage_BaseDriver]): PCDM_TypeOfFileDriver {.
    importcpp: "PCDM::FileDriverType(@)", header: "PCDM.hxx".}