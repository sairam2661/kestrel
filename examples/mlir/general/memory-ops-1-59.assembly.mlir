module {
  func.func @copy_memory_print_maa() {
    %0 = spirv.Variable : !spirv.ptr<f32, Function>
    %1 = spirv.Variable : !spirv.ptr<f32, Function>
    spirv.CopyMemory  "Function" %0,  "Function" %1 ["Volatile"],  ["Volatile"] : f32
    spirv.CopyMemory  "Function" %0,  "Function" %1 ["Aligned", 4],  ["Aligned", 4] : f32
    spirv.CopyMemory  "Function" %0,  "Function" %1 ["Aligned", 4],  ["Volatile"] : f32
    spirv.CopyMemory  "Function" %0,  "Function" %1 ["Aligned", 4],  ["Aligned", 8] : f32
    spirv.Return
  }
}

