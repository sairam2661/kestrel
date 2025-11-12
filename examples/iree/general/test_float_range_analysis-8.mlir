"builtin.module"() ({
  "util.func"() <{function_type = (f32) -> f32, sym_name = "floor_min_max", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = -5.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 5.000000e+00 : f32}> : () -> f32
    %2 = "math.floor"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %3 = "arith.maximumf"(%2, %0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %4 = "arith.minimumf"(%3, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %5 = "iree_unregistered.test_fprange"(%4) : (f32) -> f32
    "util.return"(%5) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

