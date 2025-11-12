"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<3x3xi8>) -> (i32, tensor<3x3xi32>), sym_name = "mixed_types_and_reductions"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<3x3xi8>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "tosa.cast"(%arg1) : (tensor<3x3xi8>) -> tensor<3x3xi32>
    %3 = "tosa.reduce_sum"(%2) <{axis = 0 : i32}> : (tensor<3x3xi32>) -> tensor<3xi32>
    "func.return"(%1, %3) : (i32, tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()