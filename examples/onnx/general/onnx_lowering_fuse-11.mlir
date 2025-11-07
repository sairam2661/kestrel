"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<1xf32>, tensor<1xi8>) -> tensor<?xi8>, sym_name = "test_fuse_element21"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<1xf32>, %arg2: tensor<1xi8>):
    %0 = "onnx.Pow"(%arg0, %arg1) : (tensor<?xf32>, tensor<1xf32>) -> tensor<?xf32>
    %1 = "onnx.Cast"(%0) {saturate = 1 : si64, to = i8} : (tensor<?xf32>) -> tensor<?xi8>
    %2 = "onnx.Add"(%1, %arg2) : (tensor<?xi8>, tensor<1xi8>) -> tensor<?xi8>
    "func.return"(%2) : (tensor<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()

