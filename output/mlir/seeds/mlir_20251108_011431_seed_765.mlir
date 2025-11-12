"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi64>, sym_name = "tensor_conversion"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.extsi"(%arg0) : (tensor<4xi32>) -> tensor<4xi64>
    %1 = "arith.addi"(%0, %0) : (tensor<4xi64>, tensor<4xi64>) -> tensor<4xi64>
    %2 = "arith.mulis"(%1, %1) : (tensor<4xi64>, tensor<4xi64>) -> tensor<4xi64>
    "func.return"(%2) : (tensor<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()