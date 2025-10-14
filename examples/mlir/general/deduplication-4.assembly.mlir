module {
  spirv.module Logical GLSL450 {
    spirv.func @foo(%arg0: f32, %arg1: f32, %arg2: f32) -> f32 "None" {
      %0 = spirv.FAdd %arg0, %arg1 : f32
      %1 = spirv.FMul %0, %arg2 : f32
      spirv.ReturnValue %1 : f32
    }
  }
  spirv.module Logical GLSL450 {
    spirv.func @foo(%arg0: f32, %arg1: f32, %arg2: f32) -> f32 "None" {
      %0 = spirv.FAdd %arg0, %arg2 : f32
      %1 = spirv.FMul %0, %arg1 : f32
      spirv.ReturnValue %1 : f32
    }
  }
}

