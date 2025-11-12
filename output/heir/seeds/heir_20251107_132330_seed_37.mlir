"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "tensor_combine"}> ({
  ^bb0(%arg0: tensor<2x2xi8>, %arg1: tensor<2x2xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<2x2xi8>, index) -> i8
    %3 = "tensor.extract"(%arg0, %1) : (tensor<2x2xi8>, index) -> i8
    %4 = "tensor.extract"(%arg1, %0) : (tensor<2x2xi8>, index) -> i8
    %5 = "tensor.extract"(%arg1, %1) : (tensor<2x2xi8>, index) -> i8
    %6 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %7 = "arith.addi"(%3, %5) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %8 = "tensor.empty"() : () -> tensor<2x2xi8>
    %9 = "tensor.insert"(%6, %8, %0) : (i8, tensor<2x2xi8>, index) -> tensor<2x2xi8>
    %10 = "tensor.insert"(%7, %9, %1) : (i8, tensor<2x2xi8>, index) -> tensor<2x2xi8>
    "func.return"(%10) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()