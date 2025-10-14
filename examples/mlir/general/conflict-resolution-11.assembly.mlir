module {
  spirv.module Logical GLSL450 {
    spirv.SpecConstant @foo = -5 : i32
    spirv.func @bar() -> i32 "None" {
      %0 = spirv.mlir.referenceof @foo : i32
      spirv.ReturnValue %0 : i32
    }
  }
  spirv.module Logical GLSL450 {
    spirv.func @foo(%arg0: i32) -> i32 "None" {
      spirv.ReturnValue %arg0 : i32
    }
  }
}

