module {
  func.func @group_broadcast_scalar(%arg0: f32, %arg1: i32) -> f32 {
    %0 = spirv.GroupBroadcast <Workgroup> %arg0, %arg1 : f32, i32
    return %0 : f32
  }
}

