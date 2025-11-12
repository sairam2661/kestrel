"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "workgroup_id"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "hal.interface.workgroup.id"() <{dimension = 0 : index, upper_bound = 8 : index}> : () -> index
    "scf.for"(%2, %1, %1) ({
    ^bb0(%arg0: index):
      "gpu.barrier"() : () -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

