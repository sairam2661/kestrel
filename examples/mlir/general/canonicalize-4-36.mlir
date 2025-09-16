"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "invalid_constant_FPtoUI"}> ({
    %0 = "arith.constant"() <{value = -2.000000e+00 : f32}> : () -> f32
    %1 = "arith.fptoui"(%0) : (f32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

