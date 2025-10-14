module {
  spirv.module Logical GLSL450 {
    spirv.SpecConstant @sc = 42 : i32
    spirv.func @variable_init_spec_constant() "None" {
      %0 = spirv.mlir.referenceof @sc : i32
      %1 = spirv.Variable init(%0) : !spirv.ptr<i32, Function>
      spirv.Return
    }
  }
}

