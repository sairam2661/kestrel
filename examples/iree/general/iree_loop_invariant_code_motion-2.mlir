"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "do_not_hoist_scf_for_with_unknown_trip_count"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 7.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    "scf.for"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: index):
      %3 = "arith.addf"(%1, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

