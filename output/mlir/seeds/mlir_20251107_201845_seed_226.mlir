"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.divsi"(%1, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      ^bb1:
        %3 = "arith.subi"(%arg1, %arg0) : (i32, i32) -> i32
        %4 = "arith.muli"(%3, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %5 = "arith.divsi"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      ^bb2:
        "scf.yield"(%2) : (i32) -> ()
      %6 = "scf.if"(%arg0) <{result_types = i32}> ({
        ^bb3:
          %7 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
          "scf.yield"(%7) : (i32) -> ()
      }) : (i32)
      %8 = "arith.addi"(%6, %2) : (i32, i32) -> i32
      "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()