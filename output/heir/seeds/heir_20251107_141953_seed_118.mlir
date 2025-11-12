"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "secret.generic"(%0, %1) ({
    ^bb1(%arg2: i32, %arg3: i32):
      %3 = "arith.cmpi"(%arg2, %arg3, "slt") : (i32, i32) -> i1
      %4 = "arith.select"(%3, %arg2, %arg3) : (i1, i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (i32, i32) -> i32
    %5 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "secret.generic"(%0, %5) ({
    ^bb2(%arg4: i32, %arg5: i32):
      %7 = "arith.cmpi"(%arg4, %arg5, "sgt") : (i32, i32) -> i1
      %8 = "arith.select"(%7, %arg4, %arg5) : (i1, i32, i32) -> i32
      "secret.yield"(%8) : (i32) -> ()
    }) : (i32, i32) -> i32
    "func.return"(%2, %6) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()