"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %1 = "arith.muli"(%0, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.cmpi"("slt", %arg0, %arg1) : (i32, i32) -> i1
      %4 = "arith.select"(%3, %1, %arg2) : (i1, i32, i32) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()