"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_multiply_add"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %1) : (tensor<4xi8>, index) -> i8
    %3 = "tensor.extract"(%arg1, %1) : (tensor<4xi8>, index) -> i8
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_none}> : (i8, i8) -> i8
    %5 = "arith.addi"(%4, %0) <{overflowFlags = #arith_overflow_none}> : (i8, i8) -> i8
    %6 = "tensor.insert"(%5, %arg0, %1) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%6) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()