"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, tensor<i1>) -> (), sym_name = "if_test_simple"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<i1>):
    %0 = "tosa.log"(%arg0) : (tensor<f32>) -> tensor<f32>
    %1 = "tosa.log"(%arg1) : (tensor<f32>) -> tensor<f32>
    %2 = "tosa.cond_if"(%arg2) ({
      "tosa.yield"(%0) : (tensor<f32>) -> ()
    }, {
      "tosa.yield"(%1) : (tensor<f32>) -> ()
    }) : (tensor<i1>) -> tensor<f32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

