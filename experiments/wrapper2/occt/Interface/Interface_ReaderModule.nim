##  Created on: 1993-02-04
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Interface_FileReaderData"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_ReaderModule"
discard "forward decl of Interface_ReaderModule"
type
  HandleC1C1* = Handle[InterfaceReaderModule]

## ! Defines unitary operations required to read an Entity from a
## ! File (see FileReaderData, FileReaderTool), under control of
## ! a FileReaderTool. The initial creation is performed by a
## ! GeneralModule (set in GeneralLib). Then, which remains is
## ! Loading data from the FileReaderData to the Entity
## !
## ! To work, a GeneralModule has formerly recognized the Type read
## ! from FileReaderData as a positive Case Number, then the
## ! ReaderModule reads it according to this Case Number

type
  InterfaceReaderModule* {.importcpp: "Interface_ReaderModule",
                          header: "Interface_ReaderModule.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Translates
                                                                                                ## the
                                                                                                ## type
                                                                                                ## of
                                                                                                ## record
                                                                                                ## <num>
                                                                                                ## in
                                                                                                ## <data>
                                                                                                ## to
                                                                                                ## a
                                                                                                ## positive
                                                                                                ##
                                                                                                ## !
                                                                                                ## Case
                                                                                                ## Number.
                                                                                                ## If
                                                                                                ## Recognition
                                                                                                ## fails,
                                                                                                ## must
                                                                                                ## return
                                                                                                ## 0


proc caseNum*(this: InterfaceReaderModule; data: Handle[InterfaceFileReaderData];
             num: cint): cint {.noSideEffect, importcpp: "CaseNum",
                             header: "Interface_ReaderModule.hxx".}
proc read*(this: InterfaceReaderModule; casenum: cint;
          data: Handle[InterfaceFileReaderData]; num: cint;
          ach: var Handle[InterfaceCheck]; ent: Handle[StandardTransient]) {.
    noSideEffect, importcpp: "Read", header: "Interface_ReaderModule.hxx".}
proc newRead*(this: InterfaceReaderModule; casenum: cint;
             data: Handle[InterfaceFileReaderData]; num: cint;
             ach: var Handle[InterfaceCheck]; ent: var Handle[StandardTransient]): bool {.
    noSideEffect, importcpp: "NewRead", header: "Interface_ReaderModule.hxx".}
type
  InterfaceReaderModulebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_ReaderModule::get_type_name(@)",
                            header: "Interface_ReaderModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_ReaderModule::get_type_descriptor(@)",
    header: "Interface_ReaderModule.hxx".}
proc dynamicType*(this: InterfaceReaderModule): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_ReaderModule.hxx".}

























