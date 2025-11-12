"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_with_nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.insert"(%arg0, %arg1, %0, %0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %3 = "tensor.insert"(%arg0, %2, %1, %0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %4 = "tensor.insert"(%arg0, %3, %0, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %5 = "tensor.insert"(%arg0, %4, %1, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%5) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()