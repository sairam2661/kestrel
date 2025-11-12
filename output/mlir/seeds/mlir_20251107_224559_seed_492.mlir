"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %1 = "arith.select"(%0, %arg2, %arg1) : (i1, i32, i32) -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "scf.if"(%0) ({
    ^bb0:
      %4 = "arith.addi"(%arg2, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
    ^bb0:
      %5 = "arith.subi"(%arg2, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()