#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let c2nimFile = "gc.c2nim"
#[ let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

""" ]#
proc genFiles*( infile:string;
               remove:seq[tuple[a,b:int]] = @[]; 
               addSemiColon:seq[int] = @[];
               replaceAll:seq[tuple[sub,by:string]] = @[];
               removeFuncBody:seq[tuple[a,b:int]] = @[]) =
    var (dir, name, ext) = splitFile(infile)
    if dir == "":
      dir = lib
    if ext == "":
      ext = ".hxx"
    cpFile(dir & name & ext, name & ".hxx")
    var rem:seq[tuple[a,b:int]] = remove
    var semiColon = addSemiColon
    if removeFuncBody.len > 0:
      for item in removeFuncBody:
        rem &= item
        semiColon &= item.a - 1
    #echo semiColon
    # Replace text strings
    if replaceAll.len > 0:    
      for item in replaceAll:
        var txt = readFile(name & ".hxx")        
        txt = txt.replace(item.sub, item.by)
        writeFile(name & ".hxx", txt)


    # Colons to add at the end of line
    if semiColon.len > 0:
        for line in semiColon:
            var edit = "'" & $line & " s/$/;/i'"
            edit = "sed -e " & edit & " -i " & name & ".hxx"
            exec edit

    # Lines to remove from the header
    if rem.len > 0:
        var edit = ""
        var n = 0
        for item in rem:
            edit &= $item.a & "," & $item.b & "d"
            n += 1
            if n != rem.len:
                edit &= ";"
        exec "sed -e '" & edit & "' -i " & name & ".hxx"


    exec "c2nim --cpp --header --strict --nep1 --out:" & name.toLower & ".nim " & c2nimFile & " " & name & ".hxx"
    let txt = readFile(name.toLower & ".nim")
    writeFile(name.toLower & ".nim", txt ) #beg & txt)
    rmFile(name & ".hxx")
    echo name


proc pp*(file:string,
        insert:seq[tuple[line:int;value:string]] = @[],
        replaceAll:seq[tuple[sub,by:string]] = @[];        
        comment:seq[int] = @[];
        commentRange:seq[tuple[a,b:int]] = @[] ) =
  # Reemplazar
  if replaceAll.len > 0:    
    for item in replaceAll:
      var txt = readFile(file)        
      txt = txt.replace(item.sub, item.by)
      writeFile(file, txt)

  var lines = file.readFile.splitLines

  # Comment lines
  for i in 0..<lines.len:
    if i+1 in comment:
      lines[i] = "#" & lines[i]


  for item in commentRange:
      for i in item.a .. item.b:
        lines[i-1] = "#" & lines[i-1]

  # Insert lines
  var n = 0
  for item in insert:
    var tmp1 = lines[0 .. item.line - 2 + n] 
    var tmp2 = lines[item.line - 1 + n .. lines.len-1]
    lines = tmp1 & item.value & tmp2
    n += 1
  writeFile( file, lines.join("\n"))
  
  

#=====================================================


# ls /usr/include/opencascade/GC_*.hxx | cut -c 26-

genFiles("GC_MakeArcOfCircle")
pp("gc_makearcofcircle.nim",
  replaceAll = @[("Handle[GeomTrimmedCurve]", "HandleGeomTrimmedCurve")]
)
genFiles("GC_MakeArcOfEllipse")
genFiles("GC_MakeArcOfHyperbola")
genFiles("GC_MakeArcOfParabola")
genFiles("GC_MakeCircle")
genFiles("GC_MakeConicalSurface")
genFiles("GC_MakeCylindricalSurface")
genFiles("GC_MakeEllipse")
genFiles("GC_MakeHyperbola")
genFiles("GC_MakeLine")
genFiles("GC_MakeMirror")
genFiles("GC_MakePlane")
genFiles("GC_MakeRotation")
genFiles("GC_MakeScale")
genFiles("GC_MakeSegment")
pp("gc_makesegment.nim",
  replaceAll = @[("Handle[GeomTrimmedCurve]", "HandleGeomTrimmedCurve")]
)
genFiles("GC_MakeTranslation")
genFiles("GC_MakeTrimmedCone")
genFiles("GC_MakeTrimmedCylinder")
genFiles("GC_Root")
pp("gc_root.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)





#[ pp("gp.nim",
  replaceAll = @[("dx*", "dxAsDir*"),("dy*", "dyAsDir*"),("dz*", "dzAsDir*")
  ]
) ]#



# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != "gc_includes":
    txt &= "include " & name & "\n"
    #exp &= name & ", "
  #txt &= exp


var beggining = "{.passL:\"-lTKMath\".}\n"
beggining &= "{.passC:\"-I" & lib & "\" .}\n"
beggining &= "{.experimental: \"codeReordering\".}\n\n"

writeFile("gc_includes.nim", beggining & txt )#& exp)
#pp("gc_includes.nim")