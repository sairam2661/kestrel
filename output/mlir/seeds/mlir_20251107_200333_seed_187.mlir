"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1xi32>, i32) -> tensor<1x1xi64>, sym_name = "expand_and_convert"}> ({
  ^bb0(%arg0: tensor<1x1xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "tensor.expand_shape"(%arg0, %0, %1) : (tensor<1x1xi32>, index, index) -> tensor<1x1x1x1xi32>
    %4 = "arith.extsi"(%3) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi64>
    "func.return"(%4) : (tensor<1x1x1x1xi64>) -> ()
  }) : () -> ()
}) : () -> ()