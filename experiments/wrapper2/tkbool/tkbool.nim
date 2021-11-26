{.passL:"-lTKBool".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}


when defined(windows):
  const tkbool* = "TKBool.dll"
elif defined(macosx):
  const tkbool* = "libTKBool.dylib"
else:
  const tkbool* = "libTKBool.so"

type
  #BndHArray1OfBox* = object
  #BndBox2d* = object
  BRepClass3dSolidClassifier* = object
  #ExtremaExtPC* = object
  #ExtremaExtPC2d* = object
  #ExtremaExtFlag* = object
  #extremaExtFlagMINMAX* = object
#[ type
  BndBox* = object
  Selector* = object of RootObj
  BRepToolsReShape* = object ]#

include topopebrepbuild/topopebrepbuild_includes
include topopebrepds/topopebrepds_includes
include topopebreptool/topopebreptool_includes