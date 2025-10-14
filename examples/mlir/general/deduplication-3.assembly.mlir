module {
  spirv.module Logical GLSL450 {
    spirv.SpecConstant @foo spec_id(5) = 1.000000e+00 : f32
    spirv.func @use_foo() -> f32 "None" {
      %0 = spirv.mlir.referenceof @foo : f32
      spirv.ReturnValue %0 : f32
    }
  }
  spirv.module Logical GLSL450 {
    spirv.SpecConstant @bar spec_id(5) = 1.000000e+00 : f32
    spirv.func @use_bar() -> f32 "None" {
      %0 = spirv.mlir.referenceof @bar : f32
      %1 = spirv.FAdd %0, %0 : f32
      spirv.ReturnValue %1 : f32
    }
  }
}

