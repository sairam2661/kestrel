"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
      %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    %5 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()