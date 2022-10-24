type
  AppContFunction* {.importcpp: "AppCont_Function", header: "AppCont_Function.hxx",
                    bycopy.} = object
type
  PeriodicityInfo* {.importcpp: "PeriodicityInfo",
                    header: "AppCont_LeastSquare.hxx", bycopy.} = object
    isPeriodic* {.importc: "isPeriodic".}: bool
    myPeriod* {.importc: "myPeriod".}: cfloat
  AppContLeastSquare* {.importcpp: "AppCont_LeastSquare",
                       header: "AppCont_LeastSquare.hxx", bycopy.} = object ## ! Fix border point
                                                                       ## evaluation.
