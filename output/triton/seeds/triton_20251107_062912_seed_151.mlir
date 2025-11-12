"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_calculation"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.subi"(%1, %0) : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
      %4 = "arith.divsi"(%3, %arg1) <{overflowFlags = #arith_overflowFlagsSigned}> : (i32, i32) -> i32
      %5 = "arith.remsi"(%4, %0) <{overflowFlags = #arith_overflowFlagsSigned}> : (i32, i32) -> i32
      %6 = "arith.cmpi"(%5, %arg0) <{predicate = "slt"}> : (i32, i32) -> i1
      %7 = "arith.select"(%6, %arg1, %0) : (i1, i32, i32) -> i32
      "tt.return"(%7) : (i32) -> ()
  }) : () -> i32
}) : () -> ()