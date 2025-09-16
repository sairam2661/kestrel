"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, index) -> (), sym_name = "extract"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: index):
    %0 = "tensor.extract"(%arg0, %arg1, %arg1, %arg1) : (tensor<?x?x?xf32>, index, index, index) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

