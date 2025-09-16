"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>, index, f32) -> tensor<5xf32>, sym_name = "tensor.insert"}> ({
  ^bb0(%arg0: tensor<5xf32>, %arg1: index, %arg2: f32):
    %0 = "tensor.insert"(%arg2, %arg0, %arg1) : (f32, tensor<5xf32>, index) -> tensor<5xf32>
    "func.return"(%0) : (tensor<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

