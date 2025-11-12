"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32) :
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.xori"(%2, %1) : (i32, i32) -> i32
      %4 = "arith.subi"(%3, %0) : (i32, i32) -> i32
      %5 = "arith.divsi"(%4, %1) : (i32, i32) -> i32
      %6 = "arith.remsi"(%4, %1) : (i32, i32) -> i32
      %7 = "arith.cmpi"(%5, %6, "eq") : (i32, i32) -> i1
      %8 = "arith.select"(%7, %5, %6) : (i1, i32, i32) -> i32
      "tt.return"(%8) : (i32) -> ()
  }) : (i32) -> (i32)
}) : () -> ()