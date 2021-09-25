##  Created on: 2001-06-28
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of LDOM_DocumentType"
type
  LDOM_LDOMImplementation* {.importcpp: "LDOM_LDOMImplementation",
                            header: "LDOM_LDOMImplementation.hxx", bycopy.} = object ##  ---------- PUBLIC METHODS ----------


proc createDocument*(aNamespaceURI: LDOMString; aQualifiedName: LDOMString;
                    aDocType: LDOM_DocumentType): LDOM_Document {.
    importcpp: "LDOM_LDOMImplementation::createDocument(@)",
    header: "LDOM_LDOMImplementation.hxx".}
