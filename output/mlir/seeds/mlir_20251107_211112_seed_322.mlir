"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, i1), sym_name = "mixed_arith"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %2 = "arith.cmpi"(%arg0, %0, "sgt") : (i32, i32) -> i1
    %3 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %4 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    "func.return"(%3, %4, %2) : (i32, f32, i1) -> ()
  }) : () -> ()
}) : () -> ()