import cinterop

csource "Standard_Handle.hxx":
  type
    Handle*[T] {.cgen:"(Handle::$1(@))".} = object of CClass

csource "V3D_Viewer.hxx":
  type
    V3dViewer* {.cgen:"(V3d_Viewer::$1(@))".} = object of CClass
#[
Handle(V3d_Viewer) theViewer;
Handle(AIS_InteractiveContext) aContext = new AIS_InteractiveContext (theViewer);
 
BRepPrimAPI_MakeWedge aWedgeMaker (theWedgeDX, theWedgeDY, theWedgeDZ, theWedgeLtx);
TopoDS_Solid aShape = aWedgeMaker.Solid();

Handle(AIS_Shape) aShapePrs = new AIS_Shape (aShape); // creation of the presentable object
aContext->Display (aShapePrs, AIS_Shaded, 0, true);   // display the presentable object and redraw 3d viewer      
]#