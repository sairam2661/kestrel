"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "test.some_op"(%arg0, %arg1) <{some_attr = "value"}> : (i32, i64) -> (i32, i64)
    %1 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %3 = "scf.for"(%arg0) <{lb = 0 : i32, ub = 10 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %4 = "test.another_op"(%iv) <{another_attr = "value"}> : (i32) -> i32
      "scf.yield"(%iv) : (i32) -> ()
    }) : (i32) -> i32
    %5 = "test.yet_another_op"(%arg1, %3) <{yet_another_attr = "value"}> : (i64, i32) -> i64
    "llvm.return"(%2, %5) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()