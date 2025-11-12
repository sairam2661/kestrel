"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.subi"(%1, %0) : (i32, i32) -> i32
      %3 = "arith.divsi"(%2, %arg0) : (i32, i32) -> i32
      %4 = "arith.xori"(%3, %arg1) : (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %arg0, "slt") : (i32, i32) -> i1
      %6 = "arith.select"(%5, %arg1, %arg0) : (i1, i32, i32) -> i32
      "tt.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()