##  Created on: 2011-03-06
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

discard "forward decl of Graphic3d_CView"
type
  Graphic3dAxisAspect* {.importcpp: "Graphic3d_AxisAspect",
                        header: "Graphic3d_GraduatedTrihedron.hxx", bycopy.} = object
    ## !< Number of splits along axes
    ## !< Length of tickmarks
    ## !< Color of axis and values
    ## !< Offset for drawing values
    ## !< Offset for drawing name of axis


proc newGraphic3dAxisAspect*(theName: TCollectionExtendedString = newTCollectionExtendedString("");
                            theNameColor: QuantityColor = newQuantityColor(quantityNOC_BLACK);
                            theColor: QuantityColor = newQuantityColor(quantityNOC_BLACK);
                            theValuesOffset: cint = 10; theNameOffset: cint = 30;
                            theTickmarksNumber: cint = 5;
                            theTickmarksLength: cint = 10;
                            theToDrawName: bool = true;
                            theToDrawValues: bool = true;
                            theToDrawTickmarks: bool = true): Graphic3dAxisAspect {.
    cdecl, constructor, importcpp: "Graphic3d_AxisAspect(@)", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setName*(this: var Graphic3dAxisAspect; theName: TCollectionExtendedString) {.
    cdecl, importcpp: "SetName", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc name*(this: Graphic3dAxisAspect): TCollectionExtendedString {.noSideEffect,
    cdecl, importcpp: "Name", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc toDrawName*(this: Graphic3dAxisAspect): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawName", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setDrawName*(this: var Graphic3dAxisAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawName", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc toDrawTickmarks*(this: Graphic3dAxisAspect): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawTickmarks", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setDrawTickmarks*(this: var Graphic3dAxisAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawTickmarks", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc toDrawValues*(this: Graphic3dAxisAspect): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawValues", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setDrawValues*(this: var Graphic3dAxisAspect; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawValues", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc nameColor*(this: Graphic3dAxisAspect): QuantityColor {.noSideEffect, cdecl,
    importcpp: "NameColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setNameColor*(this: var Graphic3dAxisAspect; theColor: QuantityColor) {.cdecl,
    importcpp: "SetNameColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc color*(this: Graphic3dAxisAspect): QuantityColor {.noSideEffect, cdecl,
    importcpp: "Color", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setColor*(this: var Graphic3dAxisAspect; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc tickmarksNumber*(this: Graphic3dAxisAspect): cint {.noSideEffect, cdecl,
    importcpp: "TickmarksNumber", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setTickmarksNumber*(this: var Graphic3dAxisAspect; theValue: cint) {.cdecl,
    importcpp: "SetTickmarksNumber", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc tickmarksLength*(this: Graphic3dAxisAspect): cint {.noSideEffect, cdecl,
    importcpp: "TickmarksLength", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setTickmarksLength*(this: var Graphic3dAxisAspect; theValue: cint) {.cdecl,
    importcpp: "SetTickmarksLength", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc valuesOffset*(this: Graphic3dAxisAspect): cint {.noSideEffect, cdecl,
    importcpp: "ValuesOffset", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setValuesOffset*(this: var Graphic3dAxisAspect; theValue: cint) {.cdecl,
    importcpp: "SetValuesOffset", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc nameOffset*(this: Graphic3dAxisAspect): cint {.noSideEffect, cdecl,
    importcpp: "NameOffset", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setNameOffset*(this: var Graphic3dAxisAspect; theValue: cint) {.cdecl,
    importcpp: "SetNameOffset", header: "Graphic3d_GraduatedTrihedron.hxx".}
## ! Defines the class of a graduated trihedron.
## ! It contains main style parameters for implementation of graduated trihedron
## ! @sa OpenGl_GraduatedTrihedron

type
  Graphic3dGraduatedTrihedron* {.importcpp: "Graphic3d_GraduatedTrihedron",
                                header: "Graphic3d_GraduatedTrihedron.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Default
                                                                                         ## constructor
                                                                                         ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## the
                                                                                         ## default
                                                                                         ## graduated
                                                                                         ## trihedron
                                                                                         ## with
                                                                                         ## grid,
                                                                                         ## X,
                                                                                         ## Y,
                                                                                         ## Z
                                                                                         ## axes,
                                                                                         ## and
                                                                                         ## tickmarks
    cubicAxesCallback* {.importc: "CubicAxesCallback".}: Graphic3dGraduatedTrihedronMinMaxValuesCallback ## !< Callback function to define boundary box of displayed objects
    ptrView* {.importc: "PtrView".}: ptr Graphic3dCView
    ## !< Font name of names of axes: Courier, Arial, ...
    ## !< Style of names of axes: OSD_FA_Regular, OSD_FA_Bold,..
    ## !< Size of names of axes: 8, 10,..
    ## !< Font name of values: Courier, Arial, ...
    ## !< Style of values: OSD_FA_Regular, OSD_FA_Bold, ...
    ## !< Size of values: 8, 10, 12, 14, ...
    ## !< X, Y and Z axes parameters

  Graphic3dGraduatedTrihedronMinMaxValuesCallback* = proc (a1: ptr Graphic3dCView) {.
      cdecl.}

#proc newGraphic3dGraduatedTrihedron*(theNamesFont: TCollectionAsciiString = "Arial";
#    theNamesStyle: FontFontAspect = fontFA_Bold; theNamesSize: cint = 12; theValuesFont: TCollectionAsciiString = "Arial";
#    theValuesStyle: FontFontAspect = fontFA_Regular; theValuesSize: cint = 12;
#                                    theArrowsLength: StandardShortReal = 30.0f;
#    theGridColor: QuantityColor = quantityNOC_WHITE; theToDrawGrid: bool = true;
#                                    theToDrawAxes: bool = true): Graphic3dGraduatedTrihedron {.
#    cdecl, constructor, importcpp: "Graphic3d_GraduatedTrihedron(@)", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc changeXAxisAspect*(this: var Graphic3dGraduatedTrihedron): var Graphic3dAxisAspect {.
    cdecl, importcpp: "ChangeXAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc changeYAxisAspect*(this: var Graphic3dGraduatedTrihedron): var Graphic3dAxisAspect {.
    cdecl, importcpp: "ChangeYAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc changeZAxisAspect*(this: var Graphic3dGraduatedTrihedron): var Graphic3dAxisAspect {.
    cdecl, importcpp: "ChangeZAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc changeAxisAspect*(this: var Graphic3dGraduatedTrihedron; theIndex: cint): var Graphic3dAxisAspect {.
    cdecl, importcpp: "ChangeAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc xAxisAspect*(this: Graphic3dGraduatedTrihedron): Graphic3dAxisAspect {.
    noSideEffect, cdecl, importcpp: "XAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc yAxisAspect*(this: Graphic3dGraduatedTrihedron): Graphic3dAxisAspect {.
    noSideEffect, cdecl, importcpp: "YAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc zAxisAspect*(this: Graphic3dGraduatedTrihedron): Graphic3dAxisAspect {.
    noSideEffect, cdecl, importcpp: "ZAxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc axisAspect*(this: Graphic3dGraduatedTrihedron; theIndex: cint): Graphic3dAxisAspect {.
    noSideEffect, cdecl, importcpp: "AxisAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc arrowsLength*(this: Graphic3dGraduatedTrihedron): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "ArrowsLength", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setArrowsLength*(this: var Graphic3dGraduatedTrihedron;
                     theValue: StandardShortReal) {.cdecl,
    importcpp: "SetArrowsLength", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc gridColor*(this: Graphic3dGraduatedTrihedron): QuantityColor {.noSideEffect,
    cdecl, importcpp: "GridColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setGridColor*(this: var Graphic3dGraduatedTrihedron; theColor: QuantityColor) {.
    cdecl, importcpp: "SetGridColor", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc toDrawGrid*(this: Graphic3dGraduatedTrihedron): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawGrid", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setDrawGrid*(this: var Graphic3dGraduatedTrihedron; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawGrid", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc toDrawAxes*(this: Graphic3dGraduatedTrihedron): bool {.noSideEffect, cdecl,
    importcpp: "ToDrawAxes", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setDrawAxes*(this: var Graphic3dGraduatedTrihedron; theToDraw: bool) {.cdecl,
    importcpp: "SetDrawAxes", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc namesFont*(this: Graphic3dGraduatedTrihedron): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "NamesFont", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setNamesFont*(this: var Graphic3dGraduatedTrihedron;
                  theFont: TCollectionAsciiString) {.cdecl,
    importcpp: "SetNamesFont", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc namesFontAspect*(this: Graphic3dGraduatedTrihedron): FontFontAspect {.
    noSideEffect, cdecl, importcpp: "NamesFontAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setNamesFontAspect*(this: var Graphic3dGraduatedTrihedron;
                        theAspect: FontFontAspect) {.cdecl,
    importcpp: "SetNamesFontAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc namesSize*(this: Graphic3dGraduatedTrihedron): cint {.noSideEffect, cdecl,
    importcpp: "NamesSize", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setNamesSize*(this: var Graphic3dGraduatedTrihedron; theValue: cint) {.cdecl,
    importcpp: "SetNamesSize", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc valuesFont*(this: Graphic3dGraduatedTrihedron): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ValuesFont", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setValuesFont*(this: var Graphic3dGraduatedTrihedron;
                   theFont: TCollectionAsciiString) {.cdecl,
    importcpp: "SetValuesFont", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc valuesFontAspect*(this: Graphic3dGraduatedTrihedron): FontFontAspect {.
    noSideEffect, cdecl, importcpp: "ValuesFontAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setValuesFontAspect*(this: var Graphic3dGraduatedTrihedron;
                         theAspect: FontFontAspect) {.cdecl,
    importcpp: "SetValuesFontAspect", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc valuesSize*(this: Graphic3dGraduatedTrihedron): cint {.noSideEffect, cdecl,
    importcpp: "ValuesSize", header: "Graphic3d_GraduatedTrihedron.hxx".}
proc setValuesSize*(this: var Graphic3dGraduatedTrihedron; theValue: cint) {.cdecl,
    importcpp: "SetValuesSize", header: "Graphic3d_GraduatedTrihedron.hxx".}