"builtin.module"() ({
  "func.func"() <{function_type = () -> f32, sym_name = "bitcastConstantItoFP"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.bitcast"(%0) : (i32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

