##  Created on: 2009-10-22
##  Created by: Mikhail SAZONOV
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

## *
##  Make loops from a set of connected links. A link is represented by
##  a pair of integer indices of nodes.
##

type
  PolyMakeLoops* {.importcpp: "Poly_MakeLoops", header: "Poly_MakeLoops.hxx", bycopy.} = object of RootObj##
                                                                                        ## !
                                                                                        ## Orientation
                                                                                        ## flags
                                                                                        ## that
                                                                                        ## can
                                                                                        ## be
                                                                                        ## attached
                                                                                        ## to
                                                                                        ## a
                                                                                        ## link
                                                                                        ##
                                                                                        ## PUBLIC
                                                                                        ## METHODS
                                                                                        ##
                                                                                        ## !
                                                                                        ## Constructor.
                                                                                        ## If
                                                                                        ## helper
                                                                                        ## is
                                                                                        ## NULL
                                                                                        ## then
                                                                                        ## the
                                                                                        ## algorithm
                                                                                        ## will
                                                                                        ##
                                                                                        ## !
                                                                                        ## probably
                                                                                        ## return
                                                                                        ## a
                                                                                        ## wrong
                                                                                        ## result

  PolyMakeLoopsLinkFlag* {.size: sizeof(cint),
                          importcpp: "Poly_MakeLoops::LinkFlag",
                          header: "Poly_MakeLoops.hxx".} = enum
    LF_None = 0, LF_Fwd = 1,       ##  forward orientation
    LF_Rev = 2,                 ##  reversed orientation
    LF_Both = 3,                ##  both ways oriented
    LF_Reversed = 4


type
  PolyMakeLoopsLink* {.importcpp: "Poly_MakeLoops::Link",
                      header: "Poly_MakeLoops.hxx", bycopy.} = object
    node1* {.importc: "node1".}: cint
    node2* {.importc: "node2".}: cint
    flags* {.importc: "flags".}: cint


proc newPolyMakeLoopsLink*(): PolyMakeLoopsLink {.cdecl, constructor,
    importcpp: "Poly_MakeLoops::Link(@)", dynlib: tkmath.}
proc newPolyMakeLoopsLink*(theNode1: cint; theNode2: cint): PolyMakeLoopsLink {.cdecl,
    constructor, importcpp: "Poly_MakeLoops::Link(@)", dynlib: tkmath.}
proc reverse*(this: var PolyMakeLoopsLink) {.cdecl, importcpp: "Reverse",
    dynlib: tkmath.}
proc isReversed*(this: PolyMakeLoopsLink): bool {.noSideEffect, cdecl,
    importcpp: "IsReversed", dynlib: tkmath.}
proc nullify*(this: var PolyMakeLoopsLink) {.cdecl, importcpp: "Nullify",
    dynlib: tkmath.}
proc isNull*(this: PolyMakeLoopsLink): bool {.noSideEffect, cdecl,
    importcpp: "IsNull", dynlib: tkmath.}
type
  PolyMakeLoopsListOfLink* = NCollectionList[PolyMakeLoopsLink]
  PolyMakeLoopsLoop* = PolyMakeLoopsListOfLink
  PolyMakeLoopsHelper* {.importcpp: "Poly_MakeLoops::Helper",
                        header: "Poly_MakeLoops.hxx", bycopy.} = object of RootObj ## ! returns the links adjacent to the given node


proc getAdjacentLinks*(this: PolyMakeLoopsHelper; theNode: cint): PolyMakeLoopsListOfLink {.
    noSideEffect, cdecl, importcpp: "GetAdjacentLinks", dynlib: tkmath.}
proc onAddLink*(this: PolyMakeLoopsHelper; a2: cint; a3: PolyMakeLoopsLink) {.
    noSideEffect, cdecl, importcpp: "OnAddLink", dynlib: tkmath.}
  ## theLink
type
  PolyMakeLoopsHeapOfInteger* {.importcpp: "Poly_MakeLoops::HeapOfInteger",
                               header: "Poly_MakeLoops.hxx", bycopy.} = object


proc newPolyMakeLoopsHeapOfInteger*(theNbPreAllocated: cint = 1): PolyMakeLoopsHeapOfInteger {.
    cdecl, constructor, importcpp: "Poly_MakeLoops::HeapOfInteger(@)",
    dynlib: tkmath.}
proc clear*(this: var PolyMakeLoopsHeapOfInteger) {.cdecl, importcpp: "Clear",
    dynlib: tkmath.}
proc add*(this: var PolyMakeLoopsHeapOfInteger; theValue: cint) {.cdecl,
    importcpp: "Add", dynlib: tkmath.}
proc top*(this: var PolyMakeLoopsHeapOfInteger): cint {.cdecl, importcpp: "Top",
    dynlib: tkmath.}
proc contains*(this: PolyMakeLoopsHeapOfInteger; theValue: cint): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkmath.}
proc remove*(this: var PolyMakeLoopsHeapOfInteger; theValue: cint) {.cdecl,
    importcpp: "Remove", dynlib: tkmath.}
proc isEmpty*(this: var PolyMakeLoopsHeapOfInteger): bool {.cdecl,
    importcpp: "IsEmpty", dynlib: tkmath.}
proc newPolyMakeLoops*(theHelper: ptr PolyMakeLoopsHelper;
                      theAlloc: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): PolyMakeLoops {.
    cdecl, constructor, importcpp: "Poly_MakeLoops(@)", dynlib: tkmath.}
proc reset*(this: var PolyMakeLoops; theHelper: ptr PolyMakeLoopsHelper;
           theAlloc: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)) {.cdecl,
    importcpp: "Reset", dynlib: tkmath.}
proc addLink*(this: var PolyMakeLoops; theLink: PolyMakeLoopsLink) {.cdecl,
    importcpp: "AddLink", dynlib: tkmath.}
proc replaceLink*(this: var PolyMakeLoops; theLink: PolyMakeLoopsLink;
                 theNewLink: PolyMakeLoopsLink) {.cdecl, importcpp: "ReplaceLink",
    dynlib: tkmath.}
proc setLinkOrientation*(this: var PolyMakeLoops; theLink: PolyMakeLoopsLink;
                        theOrient: PolyMakeLoopsLinkFlag): PolyMakeLoopsLinkFlag {.
    cdecl, importcpp: "SetLinkOrientation", dynlib: tkmath.}
proc findLink*(this: PolyMakeLoops; theLink: PolyMakeLoopsLink): PolyMakeLoopsLink {.
    noSideEffect, cdecl, importcpp: "FindLink", dynlib: tkmath.}
type
  PolyMakeLoopsResultCode* {.size: sizeof(cint),
                            importcpp: "Poly_MakeLoops::ResultCode",
                            header: "Poly_MakeLoops.hxx".} = enum
    RC_LoopsDone = 1, RC_HangingLinks = 2, RC_Failure = 4


proc perform*(this: var PolyMakeLoops): cint {.cdecl, importcpp: "Perform",
    dynlib: tkmath.}
proc getNbLoops*(this: PolyMakeLoops): cint {.noSideEffect, cdecl,
    importcpp: "GetNbLoops", dynlib: tkmath.}
proc getLoop*(this: PolyMakeLoops; theIndex: cint): PolyMakeLoopsLoop {.noSideEffect,
    cdecl, importcpp: "GetLoop", dynlib: tkmath.}
proc getNbHanging*(this: PolyMakeLoops): cint {.noSideEffect, cdecl,
    importcpp: "GetNbHanging", dynlib: tkmath.}
proc getHangingLinks*(this: PolyMakeLoops; theLinks: var PolyMakeLoopsListOfLink) {.
    noSideEffect, cdecl, importcpp: "GetHangingLinks", dynlib: tkmath.}
## ! Computes a hash code for the given link, in the range [1, theUpperBound]
## ! @param theLink the link which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theLink: PolyMakeLoopsLink; theUpperBound: cint): cint {.cdecl.} =
  discard

## *
##  IsEqual method is needed for maps
##

proc isEqual*(theKey1: PolyMakeLoopsLink; theKey2: PolyMakeLoopsLink): bool {.cdecl.} =
  discard

## *
##  Implementation for 3D space
##

discard "forward decl of gp_Dir"
type
  PolyMakeLoops3D* {.importcpp: "Poly_MakeLoops3D", header: "Poly_MakeLoops.hxx",
                    bycopy.} = object of PolyMakeLoops ## ! The abstract helper class

  PolyMakeLoops3DHelper* {.importcpp: "Poly_MakeLoops3D::Helper",
                          header: "Poly_MakeLoops.hxx", bycopy.} = object of PolyMakeLoopsHelper ##  all the following methods should return False if
                                                                                          ##  it is impossible to return a valid direction
                                                                                          ## ! returns the tangent vector at the first node of a link


proc getFirstTangent*(this: PolyMakeLoops3DHelper; theLink: Link; theDir: var Dir): bool {.
    noSideEffect, cdecl, importcpp: "GetFirstTangent", dynlib: tkmath.}
proc getLastTangent*(this: PolyMakeLoops3DHelper; theLink: Link; theDir: var Dir): bool {.
    noSideEffect, cdecl, importcpp: "GetLastTangent", dynlib: tkmath.}
proc getNormal*(this: PolyMakeLoops3DHelper; theNode: cint; theDir: var Dir): bool {.
    noSideEffect, cdecl, importcpp: "GetNormal", dynlib: tkmath.}
proc newPolyMakeLoops3D*(theHelper: ptr PolyMakeLoops3DHelper;
                        theAlloc: Handle[NCollectionBaseAllocator]): PolyMakeLoops3D {.
    cdecl, constructor, importcpp: "Poly_MakeLoops3D(@)", dynlib: tkmath.}
## *
##  Implementation for 2D space
##

discard "forward decl of gp_Dir2d"
type
  PolyMakeLoops2D* {.importcpp: "Poly_MakeLoops2D", header: "Poly_MakeLoops.hxx",
                    bycopy.} = object of PolyMakeLoops ## ! The abstract helper class
                                                  ## ! this flag says that chooseLeftWay must choose the right way instead

  PolyMakeLoops2DHelper* {.importcpp: "Poly_MakeLoops2D::Helper",
                          header: "Poly_MakeLoops.hxx", bycopy.} = object of PolyMakeLoopsHelper ##  all the following methods should return False if
                                                                                          ##  it is impossible to return a valid direction
                                                                                          ## ! returns the tangent vector at the first node of a link


proc getFirstTangent*(this: PolyMakeLoops2DHelper; theLink: Link; theDir: var Dir2d): bool {.
    noSideEffect, cdecl, importcpp: "GetFirstTangent", dynlib: tkmath.}
proc getLastTangent*(this: PolyMakeLoops2DHelper; theLink: Link; theDir: var Dir2d): bool {.
    noSideEffect, cdecl, importcpp: "GetLastTangent", dynlib: tkmath.}
proc newPolyMakeLoops2D*(theLeftWay: bool; theHelper: ptr PolyMakeLoops2DHelper;
                        theAlloc: Handle[NCollectionBaseAllocator]): PolyMakeLoops2D {.
    cdecl, constructor, importcpp: "Poly_MakeLoops2D(@)", dynlib: tkmath.}