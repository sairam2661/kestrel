module {
  spirv.module Logical GLSL450 {
    spirv.SpecConstant @sc = 42 : i32
    spirv.func @foo() -> i32 "None" {
      %0 = spirv.mlir.referenceof @sc : i32
      %1 = spirv.SpecConstantOperation wraps "spirv.ISub"(%0, %0) : (i32, i32) -> i32
      spirv.ReturnValue %1 : i32
    }
  }
}

