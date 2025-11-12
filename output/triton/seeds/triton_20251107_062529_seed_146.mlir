"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflowflags}> : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "arith.divsi"(%5, %6) <{signedness = #arith_signed}> : (i32, i32) -> i32
    "tt.return"(%7) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "increment"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    "tt.return"(%1) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "decrement"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.subi"(%arg0, %0) : (i32, i32) -> i32
    "tt.return"(%1) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "tt.call"(%arg0) <{callee = @increment}> : (i32) -> i32
    %1 = "tt.call"(%arg1) <{callee = @decrement}> : (i32) -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "tt.call"(%2) <{callee = @complex_arithmetic}> : (i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()