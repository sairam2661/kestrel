module {
  spirv.module Logical GLSL450 {
    spirv.func @foo(%arg0: i32) -> i32 "None" {
      spirv.ReturnValue %arg0 : i32
    }
  }
  spirv.module Logical GLSL450 {
    spirv.func @foo(%arg0: f32) -> f32 "None" {
      %0 = spirv.FAdd %arg0, %arg0 : f32
      spirv.ReturnValue %0 : f32
    }
  }
  spirv.module Logical GLSL450 {
    spirv.func @foo(%arg0: i32) -> i32 "None" {
      %0 = spirv.ISub %arg0, %arg0 : i32
      spirv.ReturnValue %0 : i32
    }
  }
}

