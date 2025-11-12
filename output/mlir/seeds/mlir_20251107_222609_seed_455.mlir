"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "fuzz_test_func"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arithOverflowFlags, signedness = #arithSignedness}> : (i32, i32) -> i32
    %4 = "arith.cmpi"("eq", %arg0, %arg1) : (i32, i32) -> i1
    %5 = "arith.select"(%4, %0, %c0) : (i1, i32, i32) -> i32
    "func.return"(%5, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()