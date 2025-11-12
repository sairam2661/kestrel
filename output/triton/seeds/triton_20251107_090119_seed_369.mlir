"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "fuzz_test_1234"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.divsi"(%3, %0) <{signedness = #arith_signed}> : (i32, i32) -> i32
      %5 = "arith.select"(%4, %1, %2) <{predicate = #arith_predicate_eq}> : (i32, i32, i32) -> i32
      "scf.for"(%5, %5, %0, %4) ({
        ^bb1(%arg1: i32, %arg2: i32):
          %6 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%6) : (i32) -> ()
      }) : (i32, i32, i32, i32) -> i32
      "tt.return"(%5) : (i32) -> ()
  }) : (i32) -> i32
}) : () -> ()