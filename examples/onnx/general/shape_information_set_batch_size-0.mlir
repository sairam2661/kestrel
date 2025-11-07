"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi64>, tensor<?x?xi64>) -> tensor<?x?xi64>, sym_name = "test_set_batch_size"}> ({
  ^bb0(%arg0: tensor<?x?xi64>, %arg1: tensor<?x?xi64>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<?x?xi64>, tensor<?x?xi64>) -> tensor<?x?xi64>
    "onnx.Return"(%0) : (tensor<?x?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

