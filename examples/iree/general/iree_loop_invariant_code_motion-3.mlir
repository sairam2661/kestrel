"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "do_hoist_scf_for_with_known_trip_count"}> ({
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 6 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 7.000000e+00 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    "scf.for"(%0, %1, %2) ({
    ^bb0(%arg0: index):
      %5 = "arith.addf"(%3, %4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

