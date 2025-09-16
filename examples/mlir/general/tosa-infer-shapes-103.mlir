"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xf32>, index) -> f32, sym_name = "test_non_tosa_consumer_extract"}> ({
  ^bb0(%arg0: tensor<4x4xf32>, %arg1: index):
    %0 = "tosa.log"(%arg0) : (tensor<4x4xf32>) -> tensor<?x?xf32>
    %1 = "tensor.extract"(%0, %arg1, %arg1) : (tensor<?x?xf32>, index, index) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

