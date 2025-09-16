"builtin.module"() ({
  "func.func"() <{function_type = () -> f32, sym_name = "test_9_negative"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> {tag = "zero"} : () -> f32
    %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> {tag = "one"} : () -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

