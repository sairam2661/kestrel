"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>, tensor<4x4xi8>) -> (tensor<4x4xi8>), sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>, %arg2: tensor<4x4xi8>):
    %0 = "llvm.mlir.constant"() <{value = 2 : i8}> : () -> i8
    %1 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    %3 = "arith.muli"(%2, %0) : (tensor<4x4xi8>, i8) -> tensor<4x4xi8>
    %4 = "arith.addi"(%3, %arg2) : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    %5 = "arith.addi"(%4, %1) : (tensor<4x4xi8>, i8) -> tensor<4x4xi8>
    "llvm.return"(%5) : (tensor<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()