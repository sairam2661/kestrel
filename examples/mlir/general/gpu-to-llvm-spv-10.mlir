"builtin.module"() ({
  "gpu.module"() <{sym_name = "subgroup_operations"}> ({
    "func.func"() <{function_type = () -> (), sym_name = "gpu_subgroup"}> ({
      %0 = "gpu.subgroup_id"() : () -> index
      %1 = "gpu.lane_id"() : () -> index
      %2 = "gpu.num_subgroups"() : () -> index
      %3 = "gpu.subgroup_size"() : () -> index
      "func.return"() : () -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

