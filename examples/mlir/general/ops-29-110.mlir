"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, tensor<i1>) -> tensor<f32>, sym_name = "test_cond_if"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<i1>):
    %0 = "tosa.cond_if"(%arg2) ({
      %2 = "tosa.add"(%arg0, %arg1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
      "tosa.yield"(%2) : (tensor<f32>) -> ()
    }, {
      %1 = "tosa.sub"(%arg0, %arg1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
      "tosa.yield"(%1) : (tensor<f32>) -> ()
    }) : (tensor<i1>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

