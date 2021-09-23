# Wrapping code
const libPath = "/usr/include/opencascade"

import cinterop
import std/os


csource libPath / "Standard_Handle.hxx":
  type
    handle*[T] = object of CClass


csource libPath / "Geom_TrimmedCurve.hxx":
  type
    Geom_TrimmedCurve* = object of CClass

csource libPath / "GC_MakeArcOfCircle.hxx":
  type 
    GC_MakeArcOfCircle* = object of CClass
    gp_Circ* = object of CClass
    

type
  Handle_Geom_TrimmedCurve* = handle[Geom_TrimmedCurve]
#GC_MakeArcOfCircle()

#[

  Handle_Geom_TrimmedCurve* {.header: "Geom_TrimmedCurve.hxx", importcpp: "Handle_Geom_TrimmedCurve".} = Handle[Geom_TrimmedCurve]
  #Base_type* {.header: "Geom_TrimmedCurve.hxx", importcpp: "Geom_TrimmedCurve::base_type".} = Geom_BoundedCurve    
]#