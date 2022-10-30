{.passL:"-lTKXSBase".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

type
  IFGraphSubPartsIterator* = object
#  GeomUndefinedValue* = object
#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

when defined(windows):
  const tkxsbase* = "TKXSBase.dll"
elif defined(macosx):
  const tkxsbase* = "libTKXSBase.dylib"
else:
  const tkxsbase* = "libTKXSBase.so" 

import transfer/transfer_includes
import intface/interface_includes
import ifselect/ifselect_includes
export transfer_includes, interface_includes, ifselect_includes
