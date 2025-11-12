"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_computation"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
      %4 = "arith.divsi"(%3, %1) : (i32, i32) -> i32
      %5 = "arith.remsi"(%3, %1) : (i32, i32) -> i32
      %6 = "arith.cmpi"(%4, %5, "slt") : (i32, i32) -> i1
      %7 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
      %8 = "arith.select"(%6, %7, %arg0) : (i1, i32, i32) -> i32
      "tt.return"(%8) : (i32) -> ()
  }) : () -> i32
}) : () -> ()