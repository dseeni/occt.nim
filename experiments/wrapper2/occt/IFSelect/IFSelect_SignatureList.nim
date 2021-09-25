##  Created on: 1994-10-27
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SignatureList"
discard "forward decl of IFSelect_SignatureList"
type
  HandleIFSelectSignatureList* = Handle[IFSelectSignatureList]

## ! A SignatureList is given as result from a Counter (any kind)
## ! It gives access to a list of signatures, with counts, and
## ! optionally with list of corresponding entities
## !
## ! It can also be used only to give a signature, through SignOnly
## ! Mode. This can be useful for a specific counter (used in a
## ! Selection), while it remains better to use a Signature
## ! whenever possible

type
  IFSelectSignatureList* {.importcpp: "IFSelect_SignatureList",
                          header: "IFSelect_SignatureList.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SignatureList.
                                                                                                ## If
                                                                                                ## <withlist>
                                                                                                ## is
                                                                                                ## True,
                                                                                                ## entities
                                                                                                ## will
                                                                                                ##
                                                                                                ## !
                                                                                                ## be
                                                                                                ## not
                                                                                                ## only
                                                                                                ## counted
                                                                                                ## per
                                                                                                ## signature,
                                                                                                ## but
                                                                                                ## also
                                                                                                ## listed.


proc constructIFSelectSignatureList*(withlist: bool = false): IFSelectSignatureList {.
    constructor, importcpp: "IFSelect_SignatureList(@)",
    header: "IFSelect_SignatureList.hxx".}
proc setList*(this: var IFSelectSignatureList; withlist: bool) {.importcpp: "SetList",
    header: "IFSelect_SignatureList.hxx".}
proc modeSignOnly*(this: var IFSelectSignatureList): var bool {.
    importcpp: "ModeSignOnly", header: "IFSelect_SignatureList.hxx".}
proc clear*(this: var IFSelectSignatureList) {.importcpp: "Clear",
    header: "IFSelect_SignatureList.hxx".}
proc add*(this: var IFSelectSignatureList; ent: Handle[StandardTransient];
         sign: StandardCString) {.importcpp: "Add",
                                header: "IFSelect_SignatureList.hxx".}
proc lastValue*(this: IFSelectSignatureList): StandardCString {.noSideEffect,
    importcpp: "LastValue", header: "IFSelect_SignatureList.hxx".}
proc init*(this: var IFSelectSignatureList; name: StandardCString;
          count: NCollectionIndexedDataMap[TCollectionAsciiString, int]; list: NCollectionIndexedDataMap[
    TCollectionAsciiString, Handle[StandardTransient]]; nbnuls: int) {.
    importcpp: "Init", header: "IFSelect_SignatureList.hxx".}
proc list*(this: IFSelectSignatureList; root: StandardCString = ""): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "List",
                                     header: "IFSelect_SignatureList.hxx".}
proc hasEntities*(this: IFSelectSignatureList): bool {.noSideEffect,
    importcpp: "HasEntities", header: "IFSelect_SignatureList.hxx".}
proc nbNulls*(this: IFSelectSignatureList): int {.noSideEffect, importcpp: "NbNulls",
    header: "IFSelect_SignatureList.hxx".}
proc nbTimes*(this: IFSelectSignatureList; sign: StandardCString): int {.noSideEffect,
    importcpp: "NbTimes", header: "IFSelect_SignatureList.hxx".}
proc entities*(this: IFSelectSignatureList; sign: StandardCString): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "Entities",
                                  header: "IFSelect_SignatureList.hxx".}
proc setName*(this: var IFSelectSignatureList; name: StandardCString) {.
    importcpp: "SetName", header: "IFSelect_SignatureList.hxx".}
proc name*(this: IFSelectSignatureList): StandardCString {.noSideEffect,
    importcpp: "Name", header: "IFSelect_SignatureList.hxx".}
proc printCount*(this: IFSelectSignatureList; s: var StandardOStream) {.noSideEffect,
    importcpp: "PrintCount", header: "IFSelect_SignatureList.hxx".}
proc printList*(this: IFSelectSignatureList; s: var StandardOStream;
               model: Handle[InterfaceInterfaceModel];
               `mod`: IFSelectPrintCount = iFSelectListByItem) {.noSideEffect,
    importcpp: "PrintList", header: "IFSelect_SignatureList.hxx".}
proc printSum*(this: IFSelectSignatureList; s: var StandardOStream) {.noSideEffect,
    importcpp: "PrintSum", header: "IFSelect_SignatureList.hxx".}
type
  IFSelectSignatureListbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_SignatureList::get_type_name(@)",
                            header: "IFSelect_SignatureList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SignatureList::get_type_descriptor(@)",
    header: "IFSelect_SignatureList.hxx".}
proc dynamicType*(this: IFSelectSignatureList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SignatureList.hxx".}
