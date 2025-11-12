"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_op_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.remsi"(%1, %arg1) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %5 = "arith.select"(%3, %4, %arg0) : (i1, i32, i32) -> i32
    %6 = "arith.xori"(%5, %arg1) : (i32, i32) -> i32
    "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()