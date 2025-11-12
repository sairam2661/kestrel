"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "unary_op_example"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.divsi"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.remsi"(%1, %0) : (i32, i32) -> i32
    %4 = "arith.select"(%3, %2, %0) : (i32, i32, i32) -> i32
    %5 = "arith.xori"(%4, %0) : (i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()