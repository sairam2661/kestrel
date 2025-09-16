"builtin.module"() ({
  "func.func"() <{function_type = (!spirv.ptr<i32, StorageBuffer>, i32) -> (), sym_name = "subgroup_block_write_intel"}> ({
  ^bb0(%arg0: !spirv.ptr<i32, StorageBuffer>, %arg1: i32):
    "spirv.INTEL.SubgroupBlockWrite"(%arg0, %arg1) : (!spirv.ptr<i32, StorageBuffer>, i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

