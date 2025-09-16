"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, index, f32) -> (tensor<?xf32>, tensor<?xf32>), sym_name = "read_after_write_conflict"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: index, %arg2: f32):
    %0 = "tensor.insert"(%arg2, %arg0, %arg1) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
    "func.return"(%0, %arg0) : (tensor<?xf32>, tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

