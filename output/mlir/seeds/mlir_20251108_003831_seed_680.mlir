"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x6xf32>, sym_name = "merge_tensors"}> ({
  ^bb0(%arg0: tensor<2x3xf32>, %arg1: tensor<2x3xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
    %1 = "tosa.concat"(%0, %arg0) <{axis = 1 : i32}> : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x6xf32>
    "func.return"(%1) : (tensor<2x6xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xf32>) -> tensor<2x6xf32>, sym_name = "concat_and_add"}> ({
  ^bb0(%arg2: tensor<2x3xf32>):
    %0 = "arith.addf"(%arg2, %arg2) : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
    %1 = "tosa.concat"(%arg2, %0) <{axis = 1 : i32}> : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x6xf32>
    "func.return"(%1) : (tensor<2x6xf32>) -> ()
  }) : () -> ()
}) : () -> ()