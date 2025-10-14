module {
  func.func @subgroup_block_read_intel(%arg0: !spirv.ptr<i32, StorageBuffer>) -> i32 {
    %0 = spirv.INTEL.SubgroupBlockRead %arg0 : !spirv.ptr<i32, StorageBuffer> -> i32
    return %0 : i32
  }
}

