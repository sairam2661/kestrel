"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>, sym_name = "xor_and_shift_operation"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<16xi8>, index) -> i8
    %2 = "tensor.extract"(%arg1, %0) : (tensor<16xi8>, index) -> i8
    %3 = "arith.xori"(%1, %2) : (i8, i8) -> i8
    %4 = "tensor_ext.rotate"(%arg0, %0, %0) : (tensor<16xi8>, index, index) -> tensor<16xi8>
    %5 = "tensor.insert"(%3, %arg0, %0) : (i8, tensor<16xi8>, index) -> tensor<16xi8>
    "func.return"(%5) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()