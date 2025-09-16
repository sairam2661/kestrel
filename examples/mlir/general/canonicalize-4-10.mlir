"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "bitcastConstantFPtoI"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.bitcast"(%0) : (f32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

