"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_cross_dialect_op"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "scf.for"(%1, %1, %0, %0) ({
    ^bb0(%iv: i32, %arg2: i32):
      %3 = "arith.addi"(%arg2, %iv) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> i32
    %4 = "secret.generic"(%arg1) ({
    ^bb0(%arg3: i32):
      %5 = "arith.muli"(%arg3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()