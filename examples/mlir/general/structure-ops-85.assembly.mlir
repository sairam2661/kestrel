module {
  spirv.module Logical GLSL450 {
    spirv.func @foo() -> i32 "None" {
      %cst1_i32 = spirv.Constant 1 : i32
      %cst1_i32_0 = spirv.Constant 1 : i32
      %0 = spirv.SpecConstantOperation wraps "spirv.IAdd"(%cst1_i32, %cst1_i32_0) : (i32, i32) -> i32
      spirv.ReturnValue %0 : i32
    }
  }
}

