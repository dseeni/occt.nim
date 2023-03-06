import geom2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types



proc newGeom2dCartesianPoint*(p: Pnt2dObj): Geom2dCartesianPoint {.cdecl, constructor,
    importcpp: "Geom2d_CartesianPoint(@)", header: "Geom2d_CartesianPoint.hxx".}

proc newGeom2dCartesianPoint*(x: cfloat; y: cfloat): Geom2dCartesianPoint {.cdecl,
    constructor, importcpp: "Geom2d_CartesianPoint(@)", header: "Geom2d_CartesianPoint.hxx".}

proc setCoord*(this: var Geom2dCartesianPoint; x: cfloat; y: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "Geom2d_CartesianPoint.hxx".}

proc setPnt2d*(this: var Geom2dCartesianPoint; p: Pnt2dObj) {.cdecl,
    importcpp: "SetPnt2d", header: "Geom2d_CartesianPoint.hxx".}

proc setX*(this: var Geom2dCartesianPoint; x: cfloat) {.cdecl, importcpp: "SetX",
    header: "Geom2d_CartesianPoint.hxx".}

proc setY*(this: var Geom2dCartesianPoint; y: cfloat) {.cdecl, importcpp: "SetY",
    header: "Geom2d_CartesianPoint.hxx".}

proc coord*(this: Geom2dCartesianPoint; x: var cfloat; y: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coord", header: "Geom2d_CartesianPoint.hxx".}

proc pnt2d*(this: Geom2dCartesianPoint): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "Pnt2d", header: "Geom2d_CartesianPoint.hxx".}

proc x*(this: Geom2dCartesianPoint): cfloat {.noSideEffect, cdecl, importcpp: "X",
    header: "Geom2d_CartesianPoint.hxx".}

proc y*(this: Geom2dCartesianPoint): cfloat {.noSideEffect, cdecl, importcpp: "Y",
    header: "Geom2d_CartesianPoint.hxx".}

proc transform*(this: var Geom2dCartesianPoint; t: Trsf2dObj) {.cdecl,
    importcpp: "Transform", header: "Geom2d_CartesianPoint.hxx".}

proc copy*(this: Geom2dCartesianPoint): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_CartesianPoint.hxx".}

proc dumpJson*(this: Geom2dCartesianPoint; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_CartesianPoint.hxx".}

