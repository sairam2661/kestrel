"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: tensor<8xi8>, %arg1: tensor<8xi8>):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 7 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<8xi8>, index) -> i8
    %3 = "tensor.extract"(%arg1, %1) : (tensor<8xi8>, index) -> i8
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %5 = "tensor_ext.rotate"(%arg0, %1, %0) : (tensor<8xi8>, index, index) -> tensor<8xi8>
    %6 = "tensor.extract"(%5, %1) : (tensor<8xi8>, index) -> i8
    %7 = "arith.muli"(%4, %6) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %8 = "arith.constant"() <{value = dense<0> : tensor<8xi8>}> : () -> tensor<8xi8>
    %9 = "tensor.insert"(%7, %8, %1) : (i8, tensor<8xi8>, index) -> tensor<8xi8>
    "func.return"(%9) : (tensor<8xi8>) -> ()
  }) : () -> ()
}) : () -> ()