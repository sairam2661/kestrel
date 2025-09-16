"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, index) -> f32, sym_name = "tensor.extract"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: index):
    %0 = "tensor.extract"(%arg0, %arg1) : (tensor<?xf32>, index) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

