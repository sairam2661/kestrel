"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x7x7xf32>) -> tensor<1x8x7x7xf32>, sym_name = "nested_fold"}> ({
  ^bb0(%arg0: tensor<1x1x7x7xf32>):
    %0 = "tensor.empty"() : () -> tensor<1x1x7x7xf32>
    %1 = "tosa.concat"(%arg0, %arg0) <{axis = 1 : i32}> : (tensor<1x1x7x7xf32>, tensor<1x1x7x7xf32>) -> tensor<1x2x7x7xf32>
    %2 = "tosa.concat"(%0, %1, %0) <{axis = 1 : i32}> : (tensor<1x1x7x7xf32>, tensor<1x2x7x7xf32>, tensor<1x1x7x7xf32>) -> tensor<1x4x7x7xf32>
    %3 = "tosa.concat"(%2, %2) <{axis = 1 : i32}> : (tensor<1x4x7x7xf32>, tensor<1x4x7x7xf32>) -> tensor<1x8x7x7xf32>
    "func.return"(%3) : (tensor<1x8x7x7xf32>) -> ()
  }) : () -> ()
}) : () -> ()

