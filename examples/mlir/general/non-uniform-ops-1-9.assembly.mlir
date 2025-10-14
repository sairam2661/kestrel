module {
  func.func @group_non_uniform_broadcast_scalar(%arg0: f32) -> f32 {
    %cst1_i32 = spirv.Constant 1 : i32
    %0 = spirv.GroupNonUniformBroadcast <Workgroup> %arg0, %cst1_i32 : f32, i32
    return %0 : f32
  }
}

