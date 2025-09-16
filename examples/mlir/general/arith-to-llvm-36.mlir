"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> (), sym_name = "ops_supporting_overflow"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<nsw>}> : (i64, i64) -> i64
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<nuw>}> : (i64, i64) -> i64
    %2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<nsw, nuw>}> : (i64, i64) -> i64
    %3 = "arith.shli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<nsw, nuw>}> : (i64, i64) -> i64
    %4 = "arith.trunci"(%arg0) <{overflowFlags = #arith.overflow<nsw, nuw>}> : (i64) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

