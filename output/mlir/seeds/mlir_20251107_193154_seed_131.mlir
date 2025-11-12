"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<3xi8>) -> tensor<?xi32>, sym_name = "mixed_tensor_ops"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<3xi8>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.extui"(%2) : (i32) -> i64
    %4 = "arith.constant"() <{value = 1.000000e+01 : f32}> : () -> f32
    %5 = "arith.addf"(%4, %4) : (f32, f32) -> f32
    %6 = "arith.constant"() <{value = dense<1073741824> : tensor<3xi32>}> : () -> tensor<3xi32>
    %7 = "tosa.rescale"(%arg0, %6, %arg1, %1, %0) <{input_unsigned = true, output_unsigned = true, per_channel = true, rounding_mode = "HALF_UP", scale32 = false}> : (tensor<?xi32>, tensor<3xi32>, tensor<3xi8>, i32, i32) -> tensor<?xi32>
    "func.return"(%7) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()