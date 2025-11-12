"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "tensor_rotation_and_insertion"}> ({
  ^bb0(%arg0: tensor<2x2xi8>, %arg1: tensor<2x2xi8>):
    %0 = "tensor.extract"(%arg0, %1) <{index = [0, 0]}> : (tensor<2x2xi8>, index) -> i8
    %1 = "tensor.extract"(%arg0, %2) <{index = [0, 1]}> : (tensor<2x2xi8>, index) -> i8
    %2 = "tensor.extract"(%arg0, %3) <{index = [1, 0]}> : (tensor<2x2xi8>, index) -> i8
    %3 = "tensor.extract"(%arg0, %4) <{index = [1, 1]}> : (tensor<2x2xi8>, index) -> i8
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "tensor_ext.rotate"(%arg0, %4) <{axis = 0}> : (tensor<2x2xi8>, index) -> tensor<2x2xi8>
    %6 = "tensor.insert"(%5, %0, %7) <{index = [0, 0]}> : (tensor<2x2xi8>, i8, index) -> tensor<2x2xi8>
    %7 = "arith.constant"() <{value = [0, 0]}> : () -> index
    %8 = "tensor.insert"(%6, %1, %9) <{index = [0, 1]}> : (tensor<2x2xi8>, i8, index) -> tensor<2x2xi8>
    %9 = "arith.constant"() <{value = [1, 0]}> : () -> index
    %10 = "tensor.insert"(%8, %2, %11) <{index = [1, 0]}> : (tensor<2x2xi8>, i8, index) -> tensor<2x2xi8>
    %11 = "arith.constant"() <{value = [1, 1]}> : () -> index
    %12 = "tensor.insert"(%10, %3, %12) <{index = [1, 1]}> : (tensor<2x2xi8>, i8, index) -> tensor<2x2xi8>
    "func.return"(%12) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()