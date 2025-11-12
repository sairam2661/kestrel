"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "arith_mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 200 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
    %4 = "arith.addf"(%arg1, %3) : (f32, f32) -> f32
    %5 = "arith.cmpi"(%2, %1, "slt") : (i32, i32) -> i1
    %6 = "arith.cmpf"(%4, %3, "gt") : (f32, f32) -> i1
    "func.return"(%2, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()