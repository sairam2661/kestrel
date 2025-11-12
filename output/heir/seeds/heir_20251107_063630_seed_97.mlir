"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_arith_and_select"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.subi"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %2 = "arith.cmpi"("eq", %arg0, %0) : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %arg0) : (i1, i32, i32) -> i32
    %4 = "arith.cmpi"("ne", %arg1, %1) : (i64, i64) -> i1
    %5 = "arith.select"(%4, %1, %arg1) : (i1, i64, i64) -> i64
    "func.return"(%3, %5) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()