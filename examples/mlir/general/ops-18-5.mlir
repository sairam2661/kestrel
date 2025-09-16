"builtin.module"() ({
  "func.func"() <{function_type = (f32, index, tensor<?x?x?xf32>) -> (), sym_name = "insert"}> ({
  ^bb0(%arg0: f32, %arg1: index, %arg2: tensor<?x?x?xf32>):
    %0 = "tensor.insert"(%arg0, %arg2, %arg1, %arg1, %arg1) : (f32, tensor<?x?x?xf32>, index, index, index) -> tensor<?x?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

