"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types_function"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_f32 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_f32 = "arith.constant"() <{value = 3.0 : f32}> : () -> f32
    %0 = "arith.addi"(%arg0, %c2_i32) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %c3_f32) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%0, %c0_i32, "sgt") : (i32, i32) -> i1
    %3 = "arith.cmpf"(%1, %c1_f32, "ogt") : (f32, f32) -> i1
    %4 = "arith.andi"(%2, %3) : (i1, i1) -> i1
    %5 = "arith.select"(%4, %c2_i32, %c0_i32) : (i1, i32, i32) -> i32
    %6 = "arith.select"(%4, %c3_f32, %c1_f32) : (i1, f32, f32) -> f32
    "func.return"(%5, %6) : (i32, f32) -> ()
  }) : (i32, f32) -> (i32, f32)
}) : () -> ()