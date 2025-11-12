"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32, i32) -> i32, sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.subi"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.cmpi"("slt", %0, %1) : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, i32, i32) -> i32
    %4 = "arith.addi"(%arg0, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.cmpi"("slt", %arg1, %arg3) : (i32, i32) -> i1
    %6 = "arith.select"(%5, %arg1, %arg3) : (i1, i32, i32) -> i32
    %7 = "arith.addi"(%4, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()