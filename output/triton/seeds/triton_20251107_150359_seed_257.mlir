"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %3 = "arith.cmpi"(%1, %2, "slt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %1, %2) : (i1, i32, i32) -> i32
    %5 = "arith.muli"(%4, %0) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %7 = "arith.divsi"(%5, %6) : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %9 = "arith.remsi"(%7, %8) : (i32, i32) -> i32
    %10 = "arith.xori"(%9, %0) : (i32, i32) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()