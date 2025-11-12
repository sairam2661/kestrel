"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>) -> tensor<3x3xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<3x3xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %3 = "tosa.add"(%arg0, %arg0) <{axis = -1 : i64}> : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    %4 = "tosa.reduce_sum"(%3) <{axis = 1 : i32, nan_mode = "PROPAGATE"}> : (tensor<3x3xi32>) -> tensor<3x1xi32>
    %5 = "arith.addi"(%4, %2) : (tensor<3x1xi32>, i32) -> tensor<3x1xi32>
    %6 = "tosa.reshape"(%5) <{new_shape = [3, 3]}> : (tensor<3x1xi32>) -> tensor<3x3xi32>
    "func.return"(%6) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()