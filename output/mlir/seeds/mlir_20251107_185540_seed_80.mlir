"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<5xi32>) -> tensor<8xi32>, sym_name = "tensor_concat"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<5xi32>):
    %0 = "tosa.const"() <{value = dense<0> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tosa.const"() <{value = dense<1> : tensor<5xi32>}> : () -> tensor<5xi32>
    %2 = "tosa.add"(%arg0, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "tosa.add"(%arg1, %1) : (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>
    %4 = "tosa.concatenate"(%2, %3) <{axis = 0 : i32}> : (tensor<4xi32>, tensor<5xi32>) -> tensor<8xi32>
    "func.return"(%4) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()