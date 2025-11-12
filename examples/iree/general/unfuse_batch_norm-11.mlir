"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x?xf32>, tensor<?xf32>, tensor<?xf32>) -> (tensor<?x?x?x?xf32>, tensor<?xf32>, tensor<?xf32>), sym_name = "batchNormTraining_dynamic_shape"}> ({
  ^bb0(%arg0: tensor<?x?x?x?xf32>, %arg1: tensor<?xf32>, %arg2: tensor<?xf32>):
    %0:3 = "stablehlo.batch_norm_training"(%arg0, %arg1, %arg2) <{epsilon = 1.001000e-05 : f32, feature_index = 2 : i64}> : (tensor<?x?x?x?xf32>, tensor<?xf32>, tensor<?xf32>) -> (tensor<?x?x?x?xf32>, tensor<?xf32>, tensor<?xf32>)
    "func.return"(%0#0, %0#1, %0#2) : (tensor<?x?x?x?xf32>, tensor<?xf32>, tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

