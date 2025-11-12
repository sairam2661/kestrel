"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, i32) -> (i32, f32), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%2, %arg2, "slt") : (i32, i32) -> i1
    %5 = "arith.cmpf"(%3, %1, "slt") : (f32, f32) -> i1
    %6 = "arith.select"(%4, %2, %arg2) : (i1, i32, i32) -> i32
    %7 = "arith.select"(%5, %3, %arg1) : (i1, f32, f32) -> f32
    "func.return"(%6, %7) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()