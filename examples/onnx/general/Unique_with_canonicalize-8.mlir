"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi64>) -> (tensor<?xi64>, tensor<?xi64>, tensor<?xi64>), sym_name = "unique_with_dynamic_inputs"}> ({
  ^bb0(%arg0: tensor<?xi64>):
    %0:4 = "onnx.Unique"(%arg0) {axis = 0 : si64, sorted = 1 : si64} : (tensor<?xi64>) -> (tensor<?xi64>, none, tensor<?xi64>, tensor<?xi64>)
    "func.return"(%0#0, %0#2, %0#3) : (tensor<?xi64>, tensor<?xi64>, tensor<?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

