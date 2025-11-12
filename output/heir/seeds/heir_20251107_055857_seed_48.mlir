"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_fn"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "scf.if"(%3) ({
      %5 = "arith.subi"(%3, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %6 = "arith.subi"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()