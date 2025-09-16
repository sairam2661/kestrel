"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, index) -> tensor<f32>, sym_name = "for_correct_recursive_legalization_behavior"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: index):
    %0 = "scf.for"(%arg1, %arg1, %arg1, %arg0) ({
    ^bb0(%arg2: index, %arg3: tensor<f32>):
      %1 = "test.munge_tensor"(%arg3) : (tensor<f32>) -> tensor<f32>
      "scf.yield"(%1) : (tensor<f32>) -> ()
    }) : (index, index, index, tensor<f32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

