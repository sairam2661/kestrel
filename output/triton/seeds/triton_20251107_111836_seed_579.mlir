"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_op_combo"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.divsi"(%1, %0) : (i32, i32) -> i32
      %3 = "arith.subi"(%1, %2) : (i32, i32) -> i32
      %4 = "arith.muli"(%1, %2) : (i32, i32) -> i32
      %5 = "arith.xori"(%1, %2) : (i32, i32) -> i32
      %6 = "arith.cmpi"(%1, %2, "ne") : (i32, i32) -> i1
      %7 = "arith.select"(%6, %5, %4) : (i1, i32, i32) -> i32
      %8 = "arith.remsi"(%1, %2) : (i32, i32) -> i32
      %9 = "arith.addi"(%7, %8) : (i32, i32) -> i32
      "tt.return"(%9) : (i32) -> ()
  }) : (i32) -> (i32)
}) : () -> ()