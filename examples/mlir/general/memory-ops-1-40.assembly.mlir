module {
  func.func @variable_init_normal_constant() {
    %cst_f32 = spirv.Constant 4.000000e+00 : f32
    %0 = spirv.Variable init(%cst_f32) : !spirv.ptr<f32, Function>
    return
  }
}

