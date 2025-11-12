"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.muli"(%1, %2) : (i32, i32) -> i32
      %4 = "arith.divsi"(%3, %0) : (i32, i32) -> i32
      %5 = "arith.remsi"(%3, %0) : (i32, i32) -> i32
      %6 = "arith.xori"(%1, %2) : (i32, i32) -> i32
      %7 = "arith.cmpi"(%4, %5) <{predicate = "slt"}> : (i32, i32) -> i1
      %8 = "arith.select"(%7, %4, %5) : (i1, i32, i32) -> i32
      "tt.return"(%8) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()