"builtin.module"() ({
  "func.func"() <{function_type = (i1, tensor<f32>, tensor<f32>) -> tensor<f32>, sym_name = "select"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<f32>, %arg2: tensor<f32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, tensor<f32>, tensor<f32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

