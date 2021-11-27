##  Created on: 1997-11-28
##  Created by: Jean Yves LEBEY
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

##  ----------------------------------------------------------------------
##   project point <P> on geometries (curve <C>,surface <S>)
##  ----------------------------------------------------------------------

proc fUN_toolBounds*(e: TopoDS_Edge; f: var StandardReal; l: var StandardReal) {.
    importcpp: "FUN_tool_bounds(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolGetindex*(ponc: ExtremaExtPC): int {.importcpp: "FUN_tool_getindex(@)",
    header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolGetindex*(ponc: ExtremaExtPC2d): int {.
    importcpp: "FUN_tool_getindex(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonC*(p: Pnt; tole: StandardReal; bac: BRepAdaptorCurve;
                      pmin: StandardReal; pmax: StandardReal;
                      param: var StandardReal; dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonC(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonC*(p: Pnt; bac: BRepAdaptorCurve; pmin: StandardReal;
                      pmax: StandardReal; param: var StandardReal;
                      dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonC(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonC*(p: Pnt; bac: BRepAdaptorCurve; param: var StandardReal;
                      dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonC(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonC2D*(p: Pnt; tole: StandardReal; bac2d: BRepAdaptorCurve2d;
                        pmin: StandardReal; pmax: StandardReal;
                        param: var StandardReal; dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonC2D(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonC2D*(p: Pnt; bac2d: BRepAdaptorCurve2d; pmin: StandardReal;
                        pmax: StandardReal; param: var StandardReal;
                        dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonC2D(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonC2D*(p: Pnt; bac2d: BRepAdaptorCurve2d; param: var StandardReal;
                        dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonC2D(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonS*(p: Pnt; s: Handle[GeomSurface]; uv: var Pnt2d;
                      dist: var StandardReal;
                      anExtFlag: ExtremaExtFlag = extremaExtFlagMINMAX;
                      anExtAlgo: ExtremaExtAlgo = extremaExtAlgoGrad): StandardBoolean {.
    importcpp: "FUN_tool_projPonS(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
##  ----------------------------------------------------------------------
##   project point <P> on topologies (edge <E>,face <F>)
##  ----------------------------------------------------------------------

proc fUN_toolProjPonE*(p: Pnt; tole: StandardReal; e: TopoDS_Edge;
                      param: var StandardReal; dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonE(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonE*(p: Pnt; e: TopoDS_Edge; param: var StandardReal;
                      dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonE(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonboundedF*(p: Pnt; f: TopoDS_Face; uv: var Pnt2d;
                             dist: var StandardReal): StandardBoolean {.
    importcpp: "FUN_tool_projPonboundedF(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc fUN_toolProjPonF*(p: Pnt; f: TopoDS_Face; uv: var Pnt2d; dist: var StandardReal;
                      anExtFlag: ExtremaExtFlag = extremaExtFlagMINMAX;
                      anExtAlgo: ExtremaExtAlgo = extremaExtAlgoGrad): StandardBoolean {.
    importcpp: "FUN_tool_projPonF(@)", header: "TopOpeBRepTool_PROJECT.hxx".}