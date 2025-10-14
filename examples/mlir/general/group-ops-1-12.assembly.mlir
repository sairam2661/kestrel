module {
  func.func @group_iadd(%arg0: i32) -> i32 {
    %0 = spirv.GroupIAdd <Workgroup> <Reduce> %arg0 : i32
    return %0 : i32
  }
}

