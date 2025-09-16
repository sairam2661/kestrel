"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "int32_scalar"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %2 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %3 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %4 = "arith.divsi"(%arg2, %arg3) : (i32, i32) -> i32
    %5 = "arith.divui"(%arg2, %arg3) : (i32, i32) -> i32
    %6 = "arith.remui"(%arg2, %arg3) : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "int32_scalar_srem"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

