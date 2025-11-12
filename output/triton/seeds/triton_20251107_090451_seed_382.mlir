"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_combinations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.select"(%arg0, %1, %0) : (i32, i32, i32) -> i32
    %3 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.xori"(%2, %4) : (i32, i32) -> i32
    %6 = "arith.addi"(%5, %0) : (i32, i32) -> i32
    %7 = "arith.addi"(%6, %3) : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()