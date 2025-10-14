module {
  func.func @group_smax(%arg0: i32) -> i32 {
    %0 = spirv.GroupSMax <Workgroup> <Reduce> %arg0 : i32
    return %0 : i32
  }
}

