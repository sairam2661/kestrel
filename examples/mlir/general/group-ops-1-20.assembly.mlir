module {
  func.func @group_imul(%arg0: i32) -> i32 {
    %0 = spirv.KHR.GroupIMul <Workgroup> <Reduce> %arg0 : i32
    return %0 : i32
  }
}

