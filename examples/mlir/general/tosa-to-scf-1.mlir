"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, tensor<i1>) -> tensor<f32>, sym_name = "if_test"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<i1>):
    %0 = "tosa.cond_if"(%arg2) ({
      "tosa.yield"(%arg0) : (tensor<f32>) -> ()
    }, {
      "tosa.yield"(%arg1) : (tensor<f32>) -> ()
    }) : (tensor<i1>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

