"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, i32), sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0, "slt") : (i32, i32) -> i1
    %4 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %5 = "arith.cmpf"(%4, %1, "slt") : (f32, f32) -> i1
    "func.return"(%2, %4, %5) : (i32, f32, i1) -> ()
  }) : () -> ()
}) : () -> ()