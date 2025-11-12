"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> f32, sym_name = "mixed_add_and_cmp"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg1, "slt") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.cmpi"(%0, %2, "ne") : (i32, i32) -> i1
    %4 = "arith.select"(%1, %3) : (i1, i1) -> i1
    %5 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %6 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %7 = "arith.select"(%4, %6, %5) : (i1, f32, f32) -> f32
    "func.return"(%7) : (f32) -> ()
  }) : () -> ()
}) : () -> ()