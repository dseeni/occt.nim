##  Created on: 2007-05-29
##  Created by: Vlad Romashko
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of TDataStd_HDataMapOfStringInteger"
discard "forward decl of TDataStd_HDataMapOfStringReal"
discard "forward decl of TDataStd_HDataMapOfStringString"
discard "forward decl of TDataStd_HDataMapOfStringByte"
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfInteger"
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfReal"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDataStd_NamedData"
type
  HandleTDataStdNamedData* = Handle[TDataStdNamedData]

## ! Contains a named data.

type
  TDataStdNamedData* {.importcpp: "TDataStd_NamedData",
                      header: "TDataStd_NamedData.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## the
                                                                                    ## ID
                                                                                    ## of
                                                                                    ## the
                                                                                    ## named
                                                                                    ## data
                                                                                    ## attribute.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor.
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## late-load
                                                                                    ## deferred
                                                                                    ## data
                                                                                    ## interface
                                                                                    ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## TRUE
                                                                                    ## if
                                                                                    ## some
                                                                                    ## data
                                                                                    ## is
                                                                                    ## not
                                                                                    ## loaded
                                                                                    ## from
                                                                                    ## deferred
                                                                                    ## storage
                                                                                    ## and
                                                                                    ## can
                                                                                    ## be
                                                                                    ## loaded
                                                                                    ## using
                                                                                    ## LoadDeferredData().
                                                                                    ##
                                                                                    ## !
                                                                                    ##
                                                                                    ## !
                                                                                    ## Late-load
                                                                                    ## interface
                                                                                    ## allows
                                                                                    ## to
                                                                                    ## avoid
                                                                                    ## loading
                                                                                    ## auxiliary
                                                                                    ## data
                                                                                    ## into
                                                                                    ## memory
                                                                                    ## until
                                                                                    ## it
                                                                                    ## is
                                                                                    ## needed
                                                                                    ## by
                                                                                    ## application
                                                                                    ##
                                                                                    ## !
                                                                                    ## and
                                                                                    ## also
                                                                                    ## speed
                                                                                    ## up
                                                                                    ## reader
                                                                                    ## by
                                                                                    ## skipping
                                                                                    ## data
                                                                                    ## chunks
                                                                                    ## in
                                                                                    ## file.
                                                                                    ##
                                                                                    ## !
                                                                                    ## This
                                                                                    ## feature
                                                                                    ## requires
                                                                                    ## file
                                                                                    ## format
                                                                                    ## having
                                                                                    ## special
                                                                                    ## structure,
                                                                                    ## and
                                                                                    ## usually
                                                                                    ## implies
                                                                                    ## read-only
                                                                                    ## access,
                                                                                    ##
                                                                                    ## !
                                                                                    ## therefore
                                                                                    ## default
                                                                                    ## implementation
                                                                                    ## will
                                                                                    ## return
                                                                                    ## FALSE
                                                                                    ## here.
                                                                                    ##
                                                                                    ## !
                                                                                    ##
                                                                                    ## !
                                                                                    ## Late-load
                                                                                    ## elements
                                                                                    ## require
                                                                                    ## special
                                                                                    ## attention
                                                                                    ## to
                                                                                    ## ensure
                                                                                    ## data
                                                                                    ## consistency,
                                                                                    ##
                                                                                    ## !
                                                                                    ## as
                                                                                    ## such
                                                                                    ## elements
                                                                                    ## are
                                                                                    ## created
                                                                                    ## in
                                                                                    ## undefined
                                                                                    ## state
                                                                                    ## (no
                                                                                    ## data)
                                                                                    ## and
                                                                                    ## Undo/Redo
                                                                                    ## mechanism
                                                                                    ## will
                                                                                    ## not
                                                                                    ## work
                                                                                    ## until
                                                                                    ## deferred
                                                                                    ## data
                                                                                    ## being
                                                                                    ## loaded.
                                                                                    ##
                                                                                    ## !
                                                                                    ##
                                                                                    ## !
                                                                                    ## Usage
                                                                                    ## scenarios:
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## Application
                                                                                    ## displays
                                                                                    ## model
                                                                                    ## in
                                                                                    ## read-only
                                                                                    ## way.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Late-load
                                                                                    ## elements
                                                                                    ## are
                                                                                    ## loaded
                                                                                    ## temporarily
                                                                                    ## on
                                                                                    ## demand
                                                                                    ## and
                                                                                    ## immediately
                                                                                    ## unloaded.
                                                                                    ##
                                                                                    ## !
                                                                                    ## theNamedData->LoadDeferredData
                                                                                    ## (true);
                                                                                    ##
                                                                                    ## !
                                                                                    ## TCollection_AsciiString
                                                                                    ## aValue
                                                                                    ## =
                                                                                    ## theNamedData->GetString
                                                                                    ## (theKey);
                                                                                    ##
                                                                                    ## !
                                                                                    ## theNamedData->UnloadDeferredData();
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## Application
                                                                                    ## saves
                                                                                    ## the
                                                                                    ## model
                                                                                    ## into
                                                                                    ## another
                                                                                    ## format.
                                                                                    ##
                                                                                    ## !
                                                                                    ## All
                                                                                    ## late-load
                                                                                    ## elements
                                                                                    ## should
                                                                                    ## be
                                                                                    ## loaded
                                                                                    ## (at
                                                                                    ## least
                                                                                    ## temporary
                                                                                    ## during
                                                                                    ## operation).
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## Application
                                                                                    ## modifies
                                                                                    ## the
                                                                                    ## model.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Late-load
                                                                                    ## element
                                                                                    ## should
                                                                                    ## be
                                                                                    ## loaded
                                                                                    ## with
                                                                                    ## removed
                                                                                    ## link
                                                                                    ## to
                                                                                    ## deferred
                                                                                    ## storage,
                                                                                    ##
                                                                                    ## !
                                                                                    ## so
                                                                                    ## that
                                                                                    ## Undo()/Redo()
                                                                                    ## will
                                                                                    ## work
                                                                                    ## as
                                                                                    ## expected
                                                                                    ## since
                                                                                    ## loading.
                                                                                    ##
                                                                                    ## !
                                                                                    ## theNamedData->LoadDeferredData
                                                                                    ## (false);
                                                                                    ##
                                                                                    ## !
                                                                                    ## theNamedData->SetString
                                                                                    ## (theKey,
                                                                                    ## theNewValue);
                                                                                    ##
                                                                                    ## !
                                                                                    ## Clear
                                                                                    ## data
                                                                                    ## without
                                                                                    ## calling
                                                                                    ## Backup().
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## TDF_Attribute
                                                                                    ## interface


proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_NamedData::GetID(@)",
                           header: "TDataStd_NamedData.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdNamedData] {.cdecl,
    importcpp: "TDataStd_NamedData::Set(@)", header: "TDataStd_NamedData.hxx".}
proc newTDataStdNamedData*(): TDataStdNamedData {.cdecl, constructor,
    importcpp: "TDataStd_NamedData(@)", header: "TDataStd_NamedData.hxx".}
proc hasIntegers*(this: TDataStdNamedData): bool {.noSideEffect, cdecl,
    importcpp: "HasIntegers", header: "TDataStd_NamedData.hxx".}
proc hasInteger*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "HasInteger", header: "TDataStd_NamedData.hxx".}
proc getInteger*(this: var TDataStdNamedData; theName: TCollectionExtendedString): cint {.
    cdecl, importcpp: "GetInteger", header: "TDataStd_NamedData.hxx".}
proc setInteger*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
                theInteger: cint) {.cdecl, importcpp: "SetInteger",
                                  header: "TDataStd_NamedData.hxx".}
proc getIntegersContainer*(this: var TDataStdNamedData): TColStdDataMapOfStringInteger {.
    cdecl, importcpp: "GetIntegersContainer", header: "TDataStd_NamedData.hxx".}
proc changeIntegers*(this: var TDataStdNamedData;
                    theIntegers: TColStdDataMapOfStringInteger) {.cdecl,
    importcpp: "ChangeIntegers", header: "TDataStd_NamedData.hxx".}
proc hasReals*(this: TDataStdNamedData): bool {.noSideEffect, cdecl,
    importcpp: "HasReals", header: "TDataStd_NamedData.hxx".}
proc hasReal*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "HasReal", header: "TDataStd_NamedData.hxx".}
proc getReal*(this: var TDataStdNamedData; theName: TCollectionExtendedString): cfloat {.
    cdecl, importcpp: "GetReal", header: "TDataStd_NamedData.hxx".}
proc setReal*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
             theReal: cfloat) {.cdecl, importcpp: "SetReal",
                              header: "TDataStd_NamedData.hxx".}
proc getRealsContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringReal {.
    cdecl, importcpp: "GetRealsContainer", header: "TDataStd_NamedData.hxx".}
proc changeReals*(this: var TDataStdNamedData; theReals: TDataStdDataMapOfStringReal) {.
    cdecl, importcpp: "ChangeReals", header: "TDataStd_NamedData.hxx".}
proc hasStrings*(this: TDataStdNamedData): bool {.noSideEffect, cdecl,
    importcpp: "HasStrings", header: "TDataStd_NamedData.hxx".}
proc hasString*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "HasString", header: "TDataStd_NamedData.hxx".}
proc getString*(this: var TDataStdNamedData; theName: TCollectionExtendedString): TCollectionExtendedString {.
    cdecl, importcpp: "GetString", header: "TDataStd_NamedData.hxx".}
proc setString*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
               theString: TCollectionExtendedString) {.cdecl,
    importcpp: "SetString", header: "TDataStd_NamedData.hxx".}
proc getStringsContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringString {.
    cdecl, importcpp: "GetStringsContainer", header: "TDataStd_NamedData.hxx".}
proc changeStrings*(this: var TDataStdNamedData;
                   theStrings: TDataStdDataMapOfStringString) {.cdecl,
    importcpp: "ChangeStrings", header: "TDataStd_NamedData.hxx".}
proc hasBytes*(this: TDataStdNamedData): bool {.noSideEffect, cdecl,
    importcpp: "HasBytes", header: "TDataStd_NamedData.hxx".}
proc hasByte*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "HasByte", header: "TDataStd_NamedData.hxx".}
proc getByte*(this: var TDataStdNamedData; theName: TCollectionExtendedString): StandardByte {.
    cdecl, importcpp: "GetByte", header: "TDataStd_NamedData.hxx".}
proc setByte*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
             theByte: StandardByte) {.cdecl, importcpp: "SetByte",
                                    header: "TDataStd_NamedData.hxx".}
proc getBytesContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringByte {.
    cdecl, importcpp: "GetBytesContainer", header: "TDataStd_NamedData.hxx".}
proc changeBytes*(this: var TDataStdNamedData; theBytes: TDataStdDataMapOfStringByte) {.
    cdecl, importcpp: "ChangeBytes", header: "TDataStd_NamedData.hxx".}
proc hasArraysOfIntegers*(this: TDataStdNamedData): bool {.noSideEffect, cdecl,
    importcpp: "HasArraysOfIntegers", header: "TDataStd_NamedData.hxx".}
proc hasArrayOfIntegers*(this: TDataStdNamedData;
                        theName: TCollectionExtendedString): bool {.noSideEffect,
    cdecl, importcpp: "HasArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc getArrayOfIntegers*(this: var TDataStdNamedData;
                        theName: TCollectionExtendedString): Handle[
    TColStdHArray1OfInteger] {.cdecl, importcpp: "GetArrayOfIntegers",
                              header: "TDataStd_NamedData.hxx".}
proc setArrayOfIntegers*(this: var TDataStdNamedData;
                        theName: TCollectionExtendedString;
                        theArrayOfIntegers: Handle[TColStdHArray1OfInteger]) {.
    cdecl, importcpp: "SetArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc getArraysOfIntegersContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringHArray1OfInteger {.
    cdecl, importcpp: "GetArraysOfIntegersContainer",
    header: "TDataStd_NamedData.hxx".}
proc changeArraysOfIntegers*(this: var TDataStdNamedData; theArraysOfIntegers: TDataStdDataMapOfStringHArray1OfInteger) {.
    cdecl, importcpp: "ChangeArraysOfIntegers", header: "TDataStd_NamedData.hxx".}
proc hasArraysOfReals*(this: TDataStdNamedData): bool {.noSideEffect, cdecl,
    importcpp: "HasArraysOfReals", header: "TDataStd_NamedData.hxx".}
proc hasArrayOfReals*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, cdecl, importcpp: "HasArrayOfReals",
    header: "TDataStd_NamedData.hxx".}
proc getArrayOfReals*(this: var TDataStdNamedData;
                     theName: TCollectionExtendedString): Handle[
    TColStdHArray1OfReal] {.cdecl, importcpp: "GetArrayOfReals",
                           header: "TDataStd_NamedData.hxx".}
proc setArrayOfReals*(this: var TDataStdNamedData;
                     theName: TCollectionExtendedString;
                     theArrayOfReals: Handle[TColStdHArray1OfReal]) {.cdecl,
    importcpp: "SetArrayOfReals", header: "TDataStd_NamedData.hxx".}
proc getArraysOfRealsContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringHArray1OfReal {.
    cdecl, importcpp: "GetArraysOfRealsContainer", header: "TDataStd_NamedData.hxx".}
proc changeArraysOfReals*(this: var TDataStdNamedData;
                         theArraysOfReals: TDataStdDataMapOfStringHArray1OfReal) {.
    cdecl, importcpp: "ChangeArraysOfReals", header: "TDataStd_NamedData.hxx".}
proc clear*(this: var TDataStdNamedData) {.cdecl, importcpp: "Clear",
                                       header: "TDataStd_NamedData.hxx".}
proc hasDeferredData*(this: TDataStdNamedData): bool {.noSideEffect, cdecl,
    importcpp: "HasDeferredData", header: "TDataStd_NamedData.hxx".}
proc loadDeferredData*(this: var TDataStdNamedData; theToKeepDeferred: bool = false): bool {.
    cdecl, importcpp: "LoadDeferredData", header: "TDataStd_NamedData.hxx".}
proc unloadDeferredData*(this: var TDataStdNamedData): bool {.cdecl,
    importcpp: "UnloadDeferredData", header: "TDataStd_NamedData.hxx".}
proc clear*(this: var TDataStdNamedData) {.cdecl, importcpp: "clear",
                                       header: "TDataStd_NamedData.hxx".}
proc setInteger*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
                theInteger: cint) {.cdecl, importcpp: "setInteger",
                                  header: "TDataStd_NamedData.hxx".}
proc setReal*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
             theReal: cfloat) {.cdecl, importcpp: "setReal",
                              header: "TDataStd_NamedData.hxx".}
proc setString*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
               theString: TCollectionExtendedString) {.cdecl,
    importcpp: "setString", header: "TDataStd_NamedData.hxx".}
proc setByte*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
             theByte: StandardByte) {.cdecl, importcpp: "setByte",
                                    header: "TDataStd_NamedData.hxx".}
proc setArrayOfIntegers*(this: var TDataStdNamedData;
                        theName: TCollectionExtendedString;
                        theArrayOfIntegers: Handle[TColStdHArray1OfInteger]) {.
    cdecl, importcpp: "setArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc setArrayOfReals*(this: var TDataStdNamedData;
                     theName: TCollectionExtendedString;
                     theArrayOfReals: Handle[TColStdHArray1OfReal]) {.cdecl,
    importcpp: "setArrayOfReals", header: "TDataStd_NamedData.hxx".}
proc id*(this: TDataStdNamedData): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_NamedData.hxx".}
proc restore*(this: var TDataStdNamedData; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_NamedData.hxx".}
proc newEmpty*(this: TDataStdNamedData): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDataStd_NamedData.hxx".}
proc paste*(this: TDataStdNamedData; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_NamedData.hxx".}
proc dump*(this: TDataStdNamedData; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_NamedData.hxx".}
proc dumpJson*(this: TDataStdNamedData; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_NamedData.hxx".}