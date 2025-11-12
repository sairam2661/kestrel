"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_concat_and_reduce"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 1 : i32}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2x2xi32>
    %1 = "tosa.reduce_min"(%0) <{axis = 2 : i32, nan_mode = "PROPAGATE"}> : (tensor<2x2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()