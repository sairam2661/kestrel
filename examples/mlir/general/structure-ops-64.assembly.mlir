module {
  spirv.module Logical GLSL450 {
    spirv.SpecConstant @sc1 = false
    spirv.SpecConstant @sc2 spec_id(5) = 42 : i64
    spirv.SpecConstant @sc3 = 1.500000e+00 : f32
  }
}

