type
  AIS_TypeOfAttribute* {.size: sizeof(cint), importcpp: "AIS_TypeOfAttribute",
                        header: "AIS_TypeOfAttribute.hxx".} = enum
    AIS_TOA_Line, AIS_TOA_Dimension, AIS_TOA_Wire, AIS_TOA_Plane, AIS_TOA_Vector,
    AIS_TOA_UIso, AIS_TOA_VIso, AIS_TOA_Free, AIS_TOA_UnFree, AIS_TOA_Section,
    AIS_TOA_Hidden, AIS_TOA_Seen, AIS_TOA_FaceBoundary, AIS_TOA_FirstAxis,
    AIS_TOA_SecondAxis, AIS_TOA_ThirdAxis

