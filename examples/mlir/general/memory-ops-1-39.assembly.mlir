module {
  func.func @variable(%arg0: f32) {
    %0 = spirv.Variable : !spirv.ptr<f32, Function>
    return
  }
}

