"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi8>, tensor<2xi8>) -> tensor<2xi8>, sym_name = "xor_tensors"}> ({
  ^bb0(%arg0: tensor<2xi8>, %arg1: tensor<2xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<2xi8>, index) -> i8
    %3 = "tensor.extract"(%arg1, %0) : (tensor<2xi8>, index) -> i8
    %4 = "arith.xori"(%2, %3) : (i8, i8) -> i8
    %5 = "tensor.insert"(%4, %arg0, %0) : (i8, tensor<2xi8>, index) -> tensor<2xi8>
    %6 = "tensor.extract"(%arg0, %1) : (tensor<2xi8>, index) -> i8
    %7 = "tensor.extract"(%arg1, %1) : (tensor<2xi8>, index) -> i8
    %8 = "arith.xori"(%6, %7) : (i8, i8) -> i8
    %9 = "tensor.insert"(%8, %5, %1) : (i8, tensor<2xi8>, index) -> tensor<2xi8>
    "func.return"(%9) : (tensor<2xi8>) -> ()
  }) : () -> ()
}) : () -> ()