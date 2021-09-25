##  Created on: 1995-03-02
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_NullValue"
discard "forward decl of Standard_NumericError"
type
  AspectRectangularGrid* {.importcpp: "Aspect_RectangularGrid",
                          header: "Aspect_RectangularGrid.hxx", bycopy.} = object of AspectGrid ##
                                                                                         ## !
                                                                                         ## creates
                                                                                         ## a
                                                                                         ## new
                                                                                         ## grid.
                                                                                         ## By
                                                                                         ## default
                                                                                         ## this
                                                                                         ## grid
                                                                                         ## is
                                                                                         ## not
                                                                                         ##
                                                                                         ## !
                                                                                         ## active.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## first
                                                                                         ## angle
                                                                                         ## is
                                                                                         ## given
                                                                                         ## relatively
                                                                                         ## to
                                                                                         ## the
                                                                                         ## horizontal.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## second
                                                                                         ## angle
                                                                                         ## is
                                                                                         ## given
                                                                                         ## relatively
                                                                                         ## to
                                                                                         ## the
                                                                                         ## vertical.

  AspectRectangularGridbaseType* = AspectGrid

proc getTypeName*(): cstring {.importcpp: "Aspect_RectangularGrid::get_type_name(@)",
                            header: "Aspect_RectangularGrid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_RectangularGrid::get_type_descriptor(@)",
    header: "Aspect_RectangularGrid.hxx".}
proc dynamicType*(this: AspectRectangularGrid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_RectangularGrid.hxx".}
proc constructAspectRectangularGrid*(aXStep: float; aYStep: float;
                                    anXOrigin: float = 0; anYOrigin: float = 0;
                                    aFirstAngle: float = 0; aSecondAngle: float = 0;
                                    aRotationAngle: float = 0): AspectRectangularGrid {.
    constructor, importcpp: "Aspect_RectangularGrid(@)",
    header: "Aspect_RectangularGrid.hxx".}
proc setXStep*(this: var AspectRectangularGrid; aStep: float) {.importcpp: "SetXStep",
    header: "Aspect_RectangularGrid.hxx".}
proc setYStep*(this: var AspectRectangularGrid; aStep: float) {.importcpp: "SetYStep",
    header: "Aspect_RectangularGrid.hxx".}
proc setAngle*(this: var AspectRectangularGrid; anAngle1: float; anAngle2: float) {.
    importcpp: "SetAngle", header: "Aspect_RectangularGrid.hxx".}
proc setGridValues*(this: var AspectRectangularGrid; xOrigin: float; yOrigin: float;
                   xStep: float; yStep: float; rotationAngle: float) {.
    importcpp: "SetGridValues", header: "Aspect_RectangularGrid.hxx".}
proc compute*(this: AspectRectangularGrid; x: float; y: float; gridX: var float;
             gridY: var float) {.noSideEffect, importcpp: "Compute",
                              header: "Aspect_RectangularGrid.hxx".}
proc xStep*(this: AspectRectangularGrid): float {.noSideEffect, importcpp: "XStep",
    header: "Aspect_RectangularGrid.hxx".}
proc yStep*(this: AspectRectangularGrid): float {.noSideEffect, importcpp: "YStep",
    header: "Aspect_RectangularGrid.hxx".}
proc firstAngle*(this: AspectRectangularGrid): float {.noSideEffect,
    importcpp: "FirstAngle", header: "Aspect_RectangularGrid.hxx".}
proc secondAngle*(this: AspectRectangularGrid): float {.noSideEffect,
    importcpp: "SecondAngle", header: "Aspect_RectangularGrid.hxx".}
proc init*(this: var AspectRectangularGrid) {.importcpp: "Init",
    header: "Aspect_RectangularGrid.hxx".}
proc dumpJson*(this: AspectRectangularGrid; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Aspect_RectangularGrid.hxx".}
discard "forward decl of Aspect_RectangularGrid"
type
  HandleAspectRectangularGrid* = Handle[AspectRectangularGrid]

