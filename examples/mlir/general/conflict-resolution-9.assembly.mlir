module {
  spirv.module Logical GLSL450 {
    spirv.func @foo(%arg0: i32) -> i32 "None" {
      spirv.ReturnValue %arg0 : i32
    }
  }
  spirv.module Logical GLSL450 {
    spirv.SpecConstant @foo = -5 : i32
  }
}

