module {
  func.func @group_umax(%arg0: i32) -> i32 {
    %0 = spirv.GroupUMax <Workgroup> <Reduce> %arg0 : i32
    return %0 : i32
  }
}

