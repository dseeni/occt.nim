# PROVIDES:
# DEPENDS: Adaptor3dCurve Adaptor3dCurve Geom2dAdaptorCurve BRepAdaptorArray1OfCurve  Handle[BRepAdaptorHCompCurve] Adaptor3dHCurve  Handle[BRepAdaptorHCurve] Adaptor3dHCurve  Handle[BRepAdaptorHCurve2d] Adaptor2dHCurve2d  Handle[BRepAdaptorHSurface] Adaptor3dHSurface Adaptor3dSurface

import tkg2d/adaptor2d/adaptor2d_types
import tkg2d/geom2dadaptor/geom2dadaptor_types
import tkg3d/adaptor3d/adaptor3d_types
import tkbrep/brep/brep_types
import tkg2d/geom2d/geom2d_types
import tkbrep/brepadaptor/brepadaptor_types
import tkg3d/geom/geom_types
import tkernel/standard/standard_types
type
  BRepAdaptorCompCurve* {.importcpp: "BRepAdaptor_CompCurve",
                         header: "BRepAdaptor_CompCurve.hxx", bycopy.} = object of Adaptor3dCurve 
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           






















  BRepAdaptorCurve* {.importcpp: "BRepAdaptor_Curve",
                     header: "BRepAdaptor_Curve.hxx", bycopy.} = object of Adaptor3dCurve 
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   






















  BRepAdaptorCurve2d* {.importcpp: "BRepAdaptor_Curve2d",
                       header: "BRepAdaptor_Curve2d.hxx", bycopy.} = object of Geom2dAdaptorCurve 
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           






















  BRepAdaptorHArray1OfCurve* {.importcpp: "BRepAdaptor_HArray1OfCurve",
                              header: "BRepAdaptor_HArray1OfCurve.hxx", bycopy.} = object of BRepAdaptorArray1OfCurve






















  HandleBRepAdaptorHCompCurve* = Handle[BRepAdaptorHCompCurve]





















  BRepAdaptorHCompCurve* {.importcpp: "BRepAdaptor_HCompCurve",
                          header: "BRepAdaptor_HCompCurve.hxx", bycopy.} = object of Adaptor3dHCurve 
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              






















  HandleBRepAdaptorHCurve* = Handle[BRepAdaptorHCurve]





















  BRepAdaptorHCurve* {.importcpp: "BRepAdaptor_HCurve",
                      header: "BRepAdaptor_HCurve.hxx", bycopy.} = object of Adaptor3dHCurve 
                                                                                      
                                                                                      
                                                                                      
                                                                                      
                                                                                      






















  HandleBRepAdaptorHCurve2d* = Handle[BRepAdaptorHCurve2d]





















  BRepAdaptorHCurve2d* {.importcpp: "BRepAdaptor_HCurve2d",
                        header: "BRepAdaptor_HCurve2d.hxx", bycopy.} = object of Adaptor2dHCurve2d 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            






















  HandleBRepAdaptorHSurface* = Handle[BRepAdaptorHSurface]





















  BRepAdaptorHSurface* {.importcpp: "BRepAdaptor_HSurface",
                        header: "BRepAdaptor_HSurface.hxx", bycopy.} = object of Adaptor3dHSurface 
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            

                                                                                            









































  BRepAdaptorSurface* {.importcpp: "BRepAdaptor_Surface",
                       header: "BRepAdaptor_Surface.hxx", bycopy.} = object of Adaptor3dSurface 
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         












































