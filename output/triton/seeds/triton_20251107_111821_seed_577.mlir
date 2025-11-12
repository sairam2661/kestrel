"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_logic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %1, %2) : (i1, i32, i32) -> i32
    %6 = "arith.subi"(%1, %2) : (i32, i32) -> i32
    %7 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %8 = "arith.divsi"(%3, %7) : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : (i32, i32) -> i32
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "nested_logic"}> ({
  ^bb0(%arg2: i32):
    %9 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %10 = "arith.addi"(%arg2, %9) : (i32, i32) -> i32
    %11 = "tt.call"(%arg2, %10) <{callee = @complex_logic}> : (i32, i32) -> i32
    "tt.return"(%11) : (i32) -> ()
  }) : (i32) -> i32
}) : () -> ()