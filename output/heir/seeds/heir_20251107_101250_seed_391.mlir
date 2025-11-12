"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.extract_slice"(%arg0, %0, %1) <{sizes = [2], strides = [1]}> : (tensor<4xi32>, index, index) -> tensor<2xi32>
    %3 = "tensor_ext.extract_slice"(%arg1, %0, %1) <{sizes = [2], strides = [1]}> : (tensor<4xi32>, index, index) -> tensor<2xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %5 = "tensor_ext.insert_slice"(%4, %arg0, %0) <{sizes = [2], strides = [1]}> : (tensor<2xi32>, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()