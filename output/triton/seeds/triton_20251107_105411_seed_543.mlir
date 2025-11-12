"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (), sym_name = "edge_case_logic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      %1 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 50 : i32}> : () -> i32
      %3 = "arith.subi"(%0, %2) : (i32, i32) -> i32
      %4 = "arith.divsi"(%3, %2) : (i32, i32) -> i32
      %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %6 = "arith.cmpi"(%4, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %7 = "arith.select"(%6, %0, %1) : (i1, i32, i32) -> i32
      %8 = "arith.addi"(%7, %2) : (i32, i32) -> i32
      %9 = "arith.remsi"(%8, %2) : (i32, i32) -> i32
      %10 = "arith.muli"(%9, %2) : (i32, i32) -> i32
      "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()