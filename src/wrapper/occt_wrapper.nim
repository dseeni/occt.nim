#{.experimental: "codeReordering".}
{.experimental: "callOperator".}

import cnew

import tkernel/tkernel
import tkmath/tkmath
import tkgeombase/tkgeombase
import tkg3d/tkg3d
import tkg2d/tkg2d
import tkbrep/tkbrep
import tktopalgo/tktopalgo
import tkprim/tkprim
import tkfillet/tkfillet
import tkbool/tkbool
import tkgeomalgo/tkgeomalgo
import tkbo/tkbo
import tkxsbase/tkxsbase
import tkstep/tkstep
import tkv3d/tkv3d
import tkservice/tkservice
import tkopengl/tkopengl

# TKOffset
import brepoffset/brepoffset_includes#tkoffset

# TKBrep
import breptools/breptools_includes

# TKGeombase
import extrema/extrema_includes

# TKTopAlgo
import brepcheck/brepcheck_includes
import brepextrema/brepextrema_includes


export cnew
export tkernel
export tkmath
export tkgeombase
export tkg3d
export tkg2d
export tkbrep
export tktopalgo
export tkprim
export tkfillet
export tkbool
export tkgeomalgo
export tkbo
export tkxsbase
export tkstep
export tkv3d
export tkservice
export tkopengl
#export tkoffset

# TKBrep
export breptools_includes

# TKGeomBase
export extrema_includes

# TKTopAlgo
export brepcheck_includes
export brepextrema_includes

# TKOffset
export brepoffset_includes