"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0, %1) : (tensor<4x4xi8>, index, index) -> i8
    %3 = "tensor.extract"(%arg1, %0, %1) : (tensor<4x4xi8>, index, index) -> i8
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %5 = "tensor.insert"(%4, %arg0, %0, %1) : (i8, tensor<4x4xi8>, index, index) -> tensor<4x4xi8>
    %6 = "arith.constant"() <{value = 1 : index}> : () -> index
    %7 = "arith.constant"() <{value = 1 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %6, %7) : (tensor<4x4xi8>, index, index) -> i8
    %9 = "tensor.extract"(%arg1, %6, %7) : (tensor<4x4xi8>, index, index) -> i8
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %11 = "tensor.insert"(%10, %5, %6, %7) : (i8, tensor<4x4xi8>, index, index) -> tensor<4x4xi8>
    "func.return"(%11) : (tensor<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()