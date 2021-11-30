##  Created on: 1994-04-21
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of IFSelect_SignCounter"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SelectSignature"
type
  HandleIFSelectSelectSignature* = Handle[IFSelectSelectSignature]

## ! A SelectSignature sorts the Entities on a Signature Matching.
## ! The signature to match is given at creation time. Also, the
## ! required match is given at creation time : exact (IsEqual) or
## ! contains (the Type's Name must contain the criterium Text)
## !
## ! Remark that no more interpretation is done, it is an
## ! alpha-numeric signature : for instance, DynamicType is matched
## ! as such, super-types are not considered
## !
## ! Also, numeric (integer) comparisons are supported : an item
## ! can be <val ou <=val or >val or >=val , val being an Integer
## !
## ! A SelectSignature may also be created from a SignCounter,
## ! which then just gives its LastValue as SignatureValue

type
  IFSelectSelectSignature* {.importcpp: "IFSelect_SelectSignature",
                            header: "IFSelect_SelectSignature.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## SelectSignature
                                                                                                        ## with
                                                                                                        ## its
                                                                                                        ## Signature
                                                                                                        ## and
                                                                                                        ## its
                                                                                                        ## Text
                                                                                                        ## to
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Match.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## <exact>
                                                                                                        ## if
                                                                                                        ## True
                                                                                                        ## requires
                                                                                                        ## exact
                                                                                                        ## match,
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## if
                                                                                                        ## False
                                                                                                        ## requires
                                                                                                        ## <signtext>
                                                                                                        ## to
                                                                                                        ## be
                                                                                                        ## contained
                                                                                                        ## in
                                                                                                        ## the
                                                                                                        ## Signature
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## entity
                                                                                                        ## (default
                                                                                                        ## is
                                                                                                        ## "exact")


proc newIFSelectSelectSignature*(matcher: Handle[IFSelectSignature];
                                signtext: cstring; exact: bool = true): IFSelectSelectSignature {.
    cdecl, constructor, importcpp: "IFSelect_SelectSignature(@)", header: "IFSelect_SelectSignature.hxx".}
proc newIFSelectSelectSignature*(matcher: Handle[IFSelectSignature];
                                signtext: TCollectionAsciiString;
                                exact: bool = true): IFSelectSelectSignature {.cdecl,
    constructor, importcpp: "IFSelect_SelectSignature(@)", header: "IFSelect_SelectSignature.hxx".}
proc newIFSelectSelectSignature*(matcher: Handle[IFSelectSignCounter];
                                signtext: cstring; exact: bool = true): IFSelectSelectSignature {.
    cdecl, constructor, importcpp: "IFSelect_SelectSignature(@)", header: "IFSelect_SelectSignature.hxx".}
proc signature*(this: IFSelectSelectSignature): Handle[IFSelectSignature] {.
    noSideEffect, cdecl, importcpp: "Signature", header: "IFSelect_SelectSignature.hxx".}
proc counter*(this: IFSelectSelectSignature): Handle[IFSelectSignCounter] {.
    noSideEffect, cdecl, importcpp: "Counter", header: "IFSelect_SelectSignature.hxx".}
proc sortInGraph*(this: IFSelectSelectSignature; rank: cint;
                 ent: Handle[StandardTransient]; g: InterfaceGraph): bool {.
    noSideEffect, cdecl, importcpp: "SortInGraph", header: "IFSelect_SelectSignature.hxx".}
proc sort*(this: IFSelectSelectSignature; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect, cdecl,
    importcpp: "Sort", header: "IFSelect_SelectSignature.hxx".}
proc signatureText*(this: IFSelectSelectSignature): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SignatureText", header: "IFSelect_SelectSignature.hxx".}
proc isExact*(this: IFSelectSelectSignature): bool {.noSideEffect, cdecl,
    importcpp: "IsExact", header: "IFSelect_SelectSignature.hxx".}
proc extractLabel*(this: IFSelectSelectSignature): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExtractLabel", header: "IFSelect_SelectSignature.hxx".}