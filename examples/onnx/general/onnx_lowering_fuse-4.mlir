"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<1xf32>) -> tensor<?xi8>, sym_name = "test_fuse_element8"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<1xf32>):
    %0 = "onnx.Pow"(%arg0, %arg1) : (tensor<?xf32>, tensor<1xf32>) -> tensor<?xf32>
    %1 = "onnx.Cast"(%0) {saturate = 1 : si64, to = i8} : (tensor<?xf32>) -> tensor<?xi8>
    "func.return"(%1) : (tensor<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()

