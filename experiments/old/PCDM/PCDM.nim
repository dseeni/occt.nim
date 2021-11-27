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

discard "forward decl of CDM_Document"
discard "forward decl of PCDM_StorageDriver"
discard "forward decl of TCollection_AsciiString"
type
  Pcdm* {.importcpp: "PCDM", header: "PCDM.hxx", bycopy.} = object


proc fileDriverType*(aFileName: TCollectionAsciiString;
                    aBaseDriver: var Handle[StorageBaseDriver]): PCDM_TypeOfFileDriver {.
    importcpp: "PCDM::FileDriverType(@)", header: "PCDM.hxx".}
proc fileDriverType*(theIStream: var StandardIStream;
                    theBaseDriver: var Handle[StorageBaseDriver]): PCDM_TypeOfFileDriver {.
    importcpp: "PCDM::FileDriverType(@)", header: "PCDM.hxx".}
























