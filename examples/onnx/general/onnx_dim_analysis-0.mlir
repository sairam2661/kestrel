"builtin.module"() ({
  "func.func"() <{arg_attrs = [{onnx.dim_params = "0:M,1:N", onnx.name = "X"}, {onnx.dim_params = "0:M,1:P", onnx.name = "Y"}], function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, res_attrs = [{onnx.dim_params = "0:M,1:N", onnx.name = "Z"}], sym_name = "test_dim_params_onnx_return"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "onnx.Return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

