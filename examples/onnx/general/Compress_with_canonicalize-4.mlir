"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xf32>, tensor<6xi1>) -> tensor<?xf32>, sym_name = "compress_no_axis_enough_cond"}> ({
  ^bb0(%arg0: tensor<3x2xf32>, %arg1: tensor<6xi1>):
    %0 = "onnx.Compress"(%arg0, %arg1) : (tensor<3x2xf32>, tensor<6xi1>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

