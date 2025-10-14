module {
  func.func @group_smin(%arg0: i32) -> i32 {
    %0 = spirv.GroupSMin <Workgroup> <Reduce> %arg0 : i32
    return %0 : i32
  }
}

