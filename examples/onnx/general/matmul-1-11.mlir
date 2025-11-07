"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "test_matmul_not_lowered_inadequate_shape_dyn"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<?x?xf32>, tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

