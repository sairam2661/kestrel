module {
  func.func @group_non_uniform_logical_xor(%arg0: i1) -> i1 {
    %0 = spirv.GroupNonUniformLogicalXor <Workgroup> <Reduce> %arg0 : i1 -> i1
    return %0 : i1
  }
}

