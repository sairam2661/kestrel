"builtin.module"() ({
  "func.func"() <{function_type = (i1, tensor<f32>) -> tensor<f32>, sym_name = "if_correct_recursive_legalization_behavior"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<f32>):
    %0 = "scf.if"(%arg0) ({
      %2 = "test.munge_tensor"(%arg1) : (tensor<f32>) -> tensor<f32>
      "scf.yield"(%2) : (tensor<f32>) -> ()
    }, {
      %1 = "test.munge_tensor"(%arg1) : (tensor<f32>) -> tensor<f32>
      "scf.yield"(%1) : (tensor<f32>) -> ()
    }) : (i1) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

