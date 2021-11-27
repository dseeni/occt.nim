##  Created on: 1994-10-03
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

discard "forward decl of Interface_Protocol"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
type
  TransferBRepReader* {.importcpp: "TransferBRep_Reader",
                       header: "TransferBRep_Reader.hxx", bycopy.} = object


proc `new`*(this: var TransferBRepReader; theSize: csize_t): pointer {.
    importcpp: "TransferBRep_Reader::operator new",
    header: "TransferBRep_Reader.hxx".}
proc `delete`*(this: var TransferBRepReader; theAddress: pointer) {.
    importcpp: "TransferBRep_Reader::operator delete",
    header: "TransferBRep_Reader.hxx".}
proc `new[]`*(this: var TransferBRepReader; theSize: csize_t): pointer {.
    importcpp: "TransferBRep_Reader::operator new[]",
    header: "TransferBRep_Reader.hxx".}
proc `delete[]`*(this: var TransferBRepReader; theAddress: pointer) {.
    importcpp: "TransferBRep_Reader::operator delete[]",
    header: "TransferBRep_Reader.hxx".}
proc `new`*(this: var TransferBRepReader; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TransferBRep_Reader::operator new",
    header: "TransferBRep_Reader.hxx".}
proc `delete`*(this: var TransferBRepReader; a2: pointer; a3: pointer) {.
    importcpp: "TransferBRep_Reader::operator delete",
    header: "TransferBRep_Reader.hxx".}
proc constructTransferBRepReader*(): TransferBRepReader {.constructor,
    importcpp: "TransferBRep_Reader(@)", header: "TransferBRep_Reader.hxx".}
proc setProtocol*(this: var TransferBRepReader; protocol: Handle[InterfaceProtocol]) {.
    importcpp: "SetProtocol", header: "TransferBRep_Reader.hxx".}
proc protocol*(this: TransferBRepReader): Handle[InterfaceProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "TransferBRep_Reader.hxx".}
proc setActor*(this: var TransferBRepReader;
              actor: Handle[TransferActorOfTransientProcess]) {.
    importcpp: "SetActor", header: "TransferBRep_Reader.hxx".}
proc actor*(this: TransferBRepReader): Handle[TransferActorOfTransientProcess] {.
    noSideEffect, importcpp: "Actor", header: "TransferBRep_Reader.hxx".}
proc setFileStatus*(this: var TransferBRepReader; status: int) {.
    importcpp: "SetFileStatus", header: "TransferBRep_Reader.hxx".}
proc fileStatus*(this: TransferBRepReader): int {.noSideEffect,
    importcpp: "FileStatus", header: "TransferBRep_Reader.hxx".}
proc fileNotFound*(this: TransferBRepReader): StandardBoolean {.noSideEffect,
    importcpp: "FileNotFound", header: "TransferBRep_Reader.hxx".}
proc syntaxError*(this: TransferBRepReader): StandardBoolean {.noSideEffect,
    importcpp: "SyntaxError", header: "TransferBRep_Reader.hxx".}
proc setModel*(this: var TransferBRepReader; model: Handle[InterfaceInterfaceModel]) {.
    importcpp: "SetModel", header: "TransferBRep_Reader.hxx".}
proc model*(this: TransferBRepReader): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "TransferBRep_Reader.hxx".}
proc clear*(this: var TransferBRepReader) {.importcpp: "Clear",
                                        header: "TransferBRep_Reader.hxx".}
proc checkStatusModel*(this: TransferBRepReader; withprint: StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "CheckStatusModel", header: "TransferBRep_Reader.hxx".}
proc checkListModel*(this: TransferBRepReader): InterfaceCheckIterator {.
    noSideEffect, importcpp: "CheckListModel", header: "TransferBRep_Reader.hxx".}
proc modeNewTransfer*(this: var TransferBRepReader): var StandardBoolean {.
    importcpp: "ModeNewTransfer", header: "TransferBRep_Reader.hxx".}
proc beginTransfer*(this: var TransferBRepReader): StandardBoolean {.
    importcpp: "BeginTransfer", header: "TransferBRep_Reader.hxx".}
proc endTransfer*(this: var TransferBRepReader) {.importcpp: "EndTransfer",
    header: "TransferBRep_Reader.hxx".}
proc prepareTransfer*(this: var TransferBRepReader) {.importcpp: "PrepareTransfer",
    header: "TransferBRep_Reader.hxx".}
proc transferRoots*(this: var TransferBRepReader;
                   theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "TransferRoots", header: "TransferBRep_Reader.hxx".}
proc transfer*(this: var TransferBRepReader; num: int;
              theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Transfer", header: "TransferBRep_Reader.hxx".}
proc transferList*(this: var TransferBRepReader;
                  list: Handle[TColStdHSequenceOfTransient];
                  theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "TransferList", header: "TransferBRep_Reader.hxx".}
proc isDone*(this: TransferBRepReader): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "TransferBRep_Reader.hxx".}
proc nbShapes*(this: TransferBRepReader): int {.noSideEffect, importcpp: "NbShapes",
    header: "TransferBRep_Reader.hxx".}
proc shapes*(this: TransferBRepReader): Handle[TopToolsHSequenceOfShape] {.
    noSideEffect, importcpp: "Shapes", header: "TransferBRep_Reader.hxx".}
proc shape*(this: TransferBRepReader; num: int = 1): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TransferBRep_Reader.hxx".}
proc shapeResult*(this: TransferBRepReader; ent: Handle[StandardTransient]): TopoDS_Shape {.
    noSideEffect, importcpp: "ShapeResult", header: "TransferBRep_Reader.hxx".}
proc oneShape*(this: TransferBRepReader): TopoDS_Shape {.noSideEffect,
    importcpp: "OneShape", header: "TransferBRep_Reader.hxx".}
proc nbTransients*(this: TransferBRepReader): int {.noSideEffect,
    importcpp: "NbTransients", header: "TransferBRep_Reader.hxx".}
proc transients*(this: TransferBRepReader): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "Transients", header: "TransferBRep_Reader.hxx".}
proc transient*(this: TransferBRepReader; num: int = 1): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Transient", header: "TransferBRep_Reader.hxx".}
proc checkStatusResult*(this: TransferBRepReader; withprints: StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "CheckStatusResult", header: "TransferBRep_Reader.hxx".}
proc checkListResult*(this: TransferBRepReader): InterfaceCheckIterator {.
    noSideEffect, importcpp: "CheckListResult", header: "TransferBRep_Reader.hxx".}
proc transientProcess*(this: TransferBRepReader): Handle[TransferTransientProcess] {.
    noSideEffect, importcpp: "TransientProcess", header: "TransferBRep_Reader.hxx".}
proc destroyTransferBRepReader*(this: var TransferBRepReader) {.
    importcpp: "#.~TransferBRep_Reader()", header: "TransferBRep_Reader.hxx".}