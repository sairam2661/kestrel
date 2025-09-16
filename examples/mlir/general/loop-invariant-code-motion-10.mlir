"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "hoist_scf_for_with_unknown_trip_count_non_unit_constant_step"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    "scf.for"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: index):
      "scf.for"(%arg0, %arg1, %1) ({
      ^bb0(%arg3: index):
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

