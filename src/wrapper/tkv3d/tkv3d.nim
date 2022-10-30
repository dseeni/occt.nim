{.passL:"-lTKV3d".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

type
  MediaTimer* = object
  SelectMgrIndexedMapOfOwner* = object
  StdSelectViewerSelector3d* = object
  CallbackOnUpdateT* = object
  MediaPlayerContext* = object
  Select3D_TypeOfSensitivity* = object
  FontFontAspect* = object
  FontTextFormatter* = object
  ImagePixMap* = object
  WNT_HIDSpaceMouse* = object
  ImageTexture* = object
  SelectBasicsPickResult* = object
  OSD_Thread* = object of RootObj
  Select3D_SensitiveEntity* = object
  SelectBasicsSelectingVolumeManager* = object of RootObj
  SelectionType* = object
  StdSelectTypeOfSelectionImage* = object
  Select3D_BVHBuilder3d* = object
  Select3D_BndBox3d* = object
  DsgPrsArrowSide* = object
  StdPrsShapeTool* = object
  ImageSupportedFormats* = object
  ImageCompressedPixMap* = object
  PerfCounters* = object
  OSD_Timer* = object
  Graphic3dArrayOfIndexedMapOfStructure* = object
  MediaFrame* = object
  OSD_Path* = object
  #perfCountersFrameRate* = object
  #perfCountersCPU* = object
  #perfCountersLayers* = object
  #PrsMgrPresentationManager3d* = object


when defined(windows):
  const tkv3d* = "TKV3d.dll"
elif defined(macosx):
  const tkv3d* = "libTKV3d.dylib"
else:
  const tkv3d* = "libTKV3d.so" 

import v3d/v3d_includes
import ais/ais_includes
import selectmgr/selectmgr_includes
import prsdim/prsdim_includes
import prs3d/prs3d_includes
import prsmgr/prsmgr_includes
import graphic3d/graphic3d_includes
export v3d_includes, ais_includes, selectmgr_includes, prsdim_includes, prs3d_includes, prsmgr_includes, graphic3d_includes
