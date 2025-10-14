module {
  func.func @simple_store(%arg0: f32) {
    %0 = spirv.Variable : !spirv.ptr<f32, Function>
    spirv.Store "Function" %0, %arg0 : f32
    return
  }
  func.func @volatile_store(%arg0: f32) {
    %0 = spirv.Variable : !spirv.ptr<f32, Function>
    spirv.Store "Function" %0, %arg0 ["Volatile"] : f32
    return
  }
  func.func @aligned_store(%arg0: f32) {
    %0 = spirv.Variable : !spirv.ptr<f32, Function>
    spirv.Store "Function" %0, %arg0 ["Aligned", 4] : f32
    return
  }
}

