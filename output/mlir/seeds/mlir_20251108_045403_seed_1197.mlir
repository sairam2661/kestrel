"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xi32>, tensor<2x4xi32>) -> tensor<4x4xi32>, sym_name = "transpose_and_concat"}> ({
    ^bb0(%arg0: tensor<4x2xi32>, %arg1: tensor<2x4xi32>):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "tosa.transpose"(%arg0, %0, %1) <{perm = [1, 0]}> : (tensor<4x2xi32>, i32, i32) -> tensor<2x4xi32>
      %3 = "tosa.concat"(%2, %arg1) <{axis = 0 : i32}> : (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<4x4xi32>
      "func.return"(%3) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()