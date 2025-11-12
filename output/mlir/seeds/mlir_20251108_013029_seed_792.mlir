"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_types_function"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 12345 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.muli"(%arg1, %1) : (i64, i64) -> i64
    "llvm.return"(%2, %3) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()