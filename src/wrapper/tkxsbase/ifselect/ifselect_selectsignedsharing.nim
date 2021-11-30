##  Created on: 1996-09-25
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of IFSelect_Signature"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_SelectSignedSharing"
type
  HandleIFSelectSelectSignedSharing* = Handle[IFSelectSelectSignedSharing]

## ! In the graph, explore the sharings of the input entities,
## ! until it encounters some which match a given Signature
## ! (for a limited level, filters the returned list)
## ! By default, fitted for any level

type
  IFSelectSelectSignedSharing* {.importcpp: "IFSelect_SelectSignedSharing",
                                header: "IFSelect_SelectSignedSharing.hxx", bycopy.} = object of IFSelectSelectExplore ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## SelectSignedSharing,
                                                                                                                ## defaulted
                                                                                                                ## for
                                                                                                                ## any
                                                                                                                ## level
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## with
                                                                                                                ## a
                                                                                                                ## given
                                                                                                                ## Signature
                                                                                                                ## and
                                                                                                                ## text
                                                                                                                ## to
                                                                                                                ## match


proc newIFSelectSelectSignedSharing*(matcher: Handle[IFSelectSignature];
                                    signtext: cstring; exact: bool = true;
                                    level: cint = 0): IFSelectSelectSignedSharing {.
    cdecl, constructor, importcpp: "IFSelect_SelectSignedSharing(@)",
    header: "IFSelect_SelectSignedSharing.hxx".}
proc signature*(this: IFSelectSelectSignedSharing): Handle[IFSelectSignature] {.
    noSideEffect, cdecl, importcpp: "Signature", header: "IFSelect_SelectSignedSharing.hxx".}
proc signatureText*(this: IFSelectSelectSignedSharing): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SignatureText", header: "IFSelect_SelectSignedSharing.hxx".}
proc isExact*(this: IFSelectSelectSignedSharing): bool {.noSideEffect, cdecl,
    importcpp: "IsExact", header: "IFSelect_SelectSignedSharing.hxx".}
proc explore*(this: IFSelectSelectSignedSharing; level: cint;
             ent: Handle[StandardTransient]; g: InterfaceGraph;
             explored: var InterfaceEntityIterator): bool {.noSideEffect, cdecl,
    importcpp: "Explore", header: "IFSelect_SelectSignedSharing.hxx".}
proc exploreLabel*(this: IFSelectSelectSignedSharing): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExploreLabel", header: "IFSelect_SelectSignedSharing.hxx".}