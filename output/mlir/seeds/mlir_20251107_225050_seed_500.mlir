"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "mixed_arith_llvm"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %3 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %4 = "arith.subi"(%2, %3) : (i32, i32) -> i32
    "llvm.return"(%4, %0) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()