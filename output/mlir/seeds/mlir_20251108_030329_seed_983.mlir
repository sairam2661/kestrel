"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "bitwise_xor_complex"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.xor"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %3 = "arith.xor"(%1, %2) : (i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()