##  Created on: 1997-02-10
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Quantity_Color"
discard "forward decl of Graphic3d_MaterialAspect"
type
  AIS_GraphicTool* {.importcpp: "AIS_GraphicTool", header: "AIS_GraphicTool.hxx",
                    bycopy.} = object


proc getLineColor*(aDrawer: Handle[Prs3dDrawer];
                  theTypeOfAttributes: AIS_TypeOfAttribute): QuantityNameOfColor {.
    importcpp: "AIS_GraphicTool::GetLineColor(@)", header: "AIS_GraphicTool.hxx".}
proc getLineColor*(aDrawer: Handle[Prs3dDrawer];
                  theTypeOfAttributes: AIS_TypeOfAttribute;
                  theLineColor: var QuantityColor) {.
    importcpp: "AIS_GraphicTool::GetLineColor(@)", header: "AIS_GraphicTool.hxx".}
proc getLineWidth*(aDrawer: Handle[Prs3dDrawer];
                  theTypeOfAttributes: AIS_TypeOfAttribute): cfloat {.
    importcpp: "AIS_GraphicTool::GetLineWidth(@)", header: "AIS_GraphicTool.hxx".}
proc getLineType*(aDrawer: Handle[Prs3dDrawer];
                 theTypeOfAttributes: AIS_TypeOfAttribute): AspectTypeOfLine {.
    importcpp: "AIS_GraphicTool::GetLineType(@)", header: "AIS_GraphicTool.hxx".}
proc getLineAtt*(aDrawer: Handle[Prs3dDrawer];
                theTypeOfAttributes: AIS_TypeOfAttribute;
                aCol: var QuantityNameOfColor; aWidth: var cfloat;
                aTyp: var AspectTypeOfLine) {.
    importcpp: "AIS_GraphicTool::GetLineAtt(@)", header: "AIS_GraphicTool.hxx".}
proc getInteriorColor*(aDrawer: Handle[Prs3dDrawer]): QuantityNameOfColor {.
    importcpp: "AIS_GraphicTool::GetInteriorColor(@)",
    header: "AIS_GraphicTool.hxx".}
proc getInteriorColor*(aDrawer: Handle[Prs3dDrawer]; aColor: var QuantityColor) {.
    importcpp: "AIS_GraphicTool::GetInteriorColor(@)",
    header: "AIS_GraphicTool.hxx".}
proc getMaterial*(aDrawer: Handle[Prs3dDrawer]): Graphic3dMaterialAspect {.
    importcpp: "AIS_GraphicTool::GetMaterial(@)", header: "AIS_GraphicTool.hxx".}
























