"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xf32>) -> !shape.shape, sym_name = "test_non_tosa_consumer_shape"}> ({
  ^bb0(%arg0: tensor<4x4xf32>):
    %0 = "tosa.log"(%arg0) : (tensor<4x4xf32>) -> tensor<*xf32>
    %1 = "shape.shape_of"(%0) : (tensor<*xf32>) -> !shape.shape
    "func.return"(%1) : (!shape.shape) -> ()
  }) : () -> ()
}) : () -> ()

