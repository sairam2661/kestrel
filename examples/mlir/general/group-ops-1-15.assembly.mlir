module {
  func.func @group_umin(%arg0: i32) -> i32 {
    %0 = spirv.GroupUMin <Workgroup> <Reduce> %arg0 : i32
    return %0 : i32
  }
}

