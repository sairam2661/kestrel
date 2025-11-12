"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %0 = "tensor.extract"(%arg0, %c0, %c0) : (tensor<2x2xi32>, index, index) -> i32
    %1 = "tensor.extract"(%arg1, %c0, %c1) : (tensor<2x2xi32>, index, index) -> i32
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "tensor.extract"(%arg0, %c1, %c0) : (tensor<2x2xi32>, index, index) -> i32
    %4 = "tensor.extract"(%arg1, %c1, %c1) : (tensor<2x2xi32>, index, index) -> i32
    %5 = "arith.muli"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%2, %arg0, %c0, %c0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %7 = "tensor.insert"(%5, %6, %c1, %c1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%7) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()