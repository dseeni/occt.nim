##  Created on: 2000-08-15
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TDocStd_Document"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of STEPCAFControl_ExternFile"
discard "forward decl of TopoDS_Shape"
type
  STEPCAFControlWriter* {.importcpp: "STEPCAFControl_Writer",
                         header: "STEPCAFControl_Writer.hxx", bycopy.} = object ## ! Mehod to
                                                                           ## writing
                                                                           ## sequence of root
                                                                           ## assemblies or part of the file
                                                                           ## specified by use by one label


proc `new`*(this: var STEPCAFControlWriter; theSize: csize_t): pointer {.
    importcpp: "STEPCAFControl_Writer::operator new",
    header: "STEPCAFControl_Writer.hxx".}
proc `delete`*(this: var STEPCAFControlWriter; theAddress: pointer) {.
    importcpp: "STEPCAFControl_Writer::operator delete",
    header: "STEPCAFControl_Writer.hxx".}
proc `new[]`*(this: var STEPCAFControlWriter; theSize: csize_t): pointer {.
    importcpp: "STEPCAFControl_Writer::operator new[]",
    header: "STEPCAFControl_Writer.hxx".}
proc `delete[]`*(this: var STEPCAFControlWriter; theAddress: pointer) {.
    importcpp: "STEPCAFControl_Writer::operator delete[]",
    header: "STEPCAFControl_Writer.hxx".}
proc `new`*(this: var STEPCAFControlWriter; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "STEPCAFControl_Writer::operator new",
    header: "STEPCAFControl_Writer.hxx".}
proc `delete`*(this: var STEPCAFControlWriter; a2: pointer; a3: pointer) {.
    importcpp: "STEPCAFControl_Writer::operator delete",
    header: "STEPCAFControl_Writer.hxx".}
proc constructSTEPCAFControlWriter*(): STEPCAFControlWriter {.constructor,
    importcpp: "STEPCAFControl_Writer(@)", header: "STEPCAFControl_Writer.hxx".}
proc constructSTEPCAFControlWriter*(ws: Handle[XSControlWorkSession];
                                   scratch: StandardBoolean = true): STEPCAFControlWriter {.
    constructor, importcpp: "STEPCAFControl_Writer(@)",
    header: "STEPCAFControl_Writer.hxx".}
proc init*(this: var STEPCAFControlWriter; ws: Handle[XSControlWorkSession];
          scratch: StandardBoolean = true) {.importcpp: "Init",
    header: "STEPCAFControl_Writer.hxx".}
proc write*(this: var STEPCAFControlWriter; filename: StandardCString): IFSelectReturnStatus {.
    importcpp: "Write", header: "STEPCAFControl_Writer.hxx".}
proc transfer*(this: var STEPCAFControlWriter; doc: Handle[TDocStdDocument];
              mode: STEPControlStepModelType = sTEPControlAsIs;
              multi: StandardCString = 0;
              theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc transfer*(this: var STEPCAFControlWriter; L: TDF_Label;
              mode: STEPControlStepModelType = sTEPControlAsIs;
              multi: StandardCString = 0;
              theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Transfer", header: "STEPCAFControl_Writer.hxx".}
proc perform*(this: var STEPCAFControlWriter; doc: Handle[TDocStdDocument];
             filename: TCollectionAsciiString;
             theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Perform", header: "STEPCAFControl_Writer.hxx".}
proc perform*(this: var STEPCAFControlWriter; doc: Handle[TDocStdDocument];
             filename: StandardCString;
             theProgress: MessageProgressRange = messageProgressRange()): StandardBoolean {.
    importcpp: "Perform", header: "STEPCAFControl_Writer.hxx".}
proc externFiles*(this: STEPCAFControlWriter): NCollectionDataMap[
    TCollectionAsciiString, Handle[STEPCAFControlExternFile]] {.noSideEffect,
    importcpp: "ExternFiles", header: "STEPCAFControl_Writer.hxx".}
proc externFile*(this: STEPCAFControlWriter; L: TDF_Label;
                ef: var Handle[STEPCAFControlExternFile]): StandardBoolean {.
    noSideEffect, importcpp: "ExternFile", header: "STEPCAFControl_Writer.hxx".}
proc externFile*(this: STEPCAFControlWriter; name: StandardCString;
                ef: var Handle[STEPCAFControlExternFile]): StandardBoolean {.
    noSideEffect, importcpp: "ExternFile", header: "STEPCAFControl_Writer.hxx".}
proc changeWriter*(this: var STEPCAFControlWriter): var STEPControlWriter {.
    importcpp: "ChangeWriter", header: "STEPCAFControl_Writer.hxx".}
proc writer*(this: STEPCAFControlWriter): STEPControlWriter {.noSideEffect,
    importcpp: "Writer", header: "STEPCAFControl_Writer.hxx".}
proc setColorMode*(this: var STEPCAFControlWriter; colormode: StandardBoolean) {.
    importcpp: "SetColorMode", header: "STEPCAFControl_Writer.hxx".}
proc getColorMode*(this: STEPCAFControlWriter): StandardBoolean {.noSideEffect,
    importcpp: "GetColorMode", header: "STEPCAFControl_Writer.hxx".}
proc setNameMode*(this: var STEPCAFControlWriter; namemode: StandardBoolean) {.
    importcpp: "SetNameMode", header: "STEPCAFControl_Writer.hxx".}
proc getNameMode*(this: STEPCAFControlWriter): StandardBoolean {.noSideEffect,
    importcpp: "GetNameMode", header: "STEPCAFControl_Writer.hxx".}
proc setLayerMode*(this: var STEPCAFControlWriter; layermode: StandardBoolean) {.
    importcpp: "SetLayerMode", header: "STEPCAFControl_Writer.hxx".}
proc getLayerMode*(this: STEPCAFControlWriter): StandardBoolean {.noSideEffect,
    importcpp: "GetLayerMode", header: "STEPCAFControl_Writer.hxx".}
proc setPropsMode*(this: var STEPCAFControlWriter; propsmode: StandardBoolean) {.
    importcpp: "SetPropsMode", header: "STEPCAFControl_Writer.hxx".}
proc getPropsMode*(this: STEPCAFControlWriter): StandardBoolean {.noSideEffect,
    importcpp: "GetPropsMode", header: "STEPCAFControl_Writer.hxx".}
proc setSHUOMode*(this: var STEPCAFControlWriter; shuomode: StandardBoolean) {.
    importcpp: "SetSHUOMode", header: "STEPCAFControl_Writer.hxx".}
proc getSHUOMode*(this: STEPCAFControlWriter): StandardBoolean {.noSideEffect,
    importcpp: "GetSHUOMode", header: "STEPCAFControl_Writer.hxx".}
proc setDimTolMode*(this: var STEPCAFControlWriter; dimtolmode: StandardBoolean) {.
    importcpp: "SetDimTolMode", header: "STEPCAFControl_Writer.hxx".}
proc getDimTolMode*(this: STEPCAFControlWriter): StandardBoolean {.noSideEffect,
    importcpp: "GetDimTolMode", header: "STEPCAFControl_Writer.hxx".}
proc setMaterialMode*(this: var STEPCAFControlWriter; matmode: StandardBoolean) {.
    importcpp: "SetMaterialMode", header: "STEPCAFControl_Writer.hxx".}
proc getMaterialMode*(this: STEPCAFControlWriter): StandardBoolean {.noSideEffect,
    importcpp: "GetMaterialMode", header: "STEPCAFControl_Writer.hxx".}