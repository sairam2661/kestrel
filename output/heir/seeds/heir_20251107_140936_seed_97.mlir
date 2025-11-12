"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_math"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, i32, i32) -> i32
    %4 = "scf.for"(%arg0, %arg1, %3, %3) ({
    ^bb0(%arg4: i32, %arg5: i32):
      %5 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) {lower = 0 : i64, upper = 10 : i64} : (i32, i32, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()