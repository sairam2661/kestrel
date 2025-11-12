"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<4xi32>) -> tensor<6xi32>, sym_name = "concat_tensors"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<4xi32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<2xi32>, tensor<4xi32>) -> tensor<6xi32>
    "func.return"(%0) : (tensor<6xi32>) -> ()
  }) : () -> ()
}) : () -> ()