"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith_if"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
      %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()