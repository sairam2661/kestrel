"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x4xi8>) -> (i32, tensor<4x4xi8>), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x4xi8>):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %3 = "arith.subi"(%arg0, %2) : (i32, i32) -> i32
    %4 = "tosa.logical_xor"(%arg1, %arg1) : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    "llvm.return"(%3, %4) : (i32, tensor<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()