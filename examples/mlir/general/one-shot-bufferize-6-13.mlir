"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, f32, index) -> (tensor<?xf32>, index), sym_name = "dim_not_reading"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: f32, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.insert"(%arg1, %arg0, %arg2) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
    %2 = "tensor.dim"(%arg0, %0) : (tensor<?xf32>, index) -> index
    "func.return"(%1, %2) : (tensor<?xf32>, index) -> ()
  }) : () -> ()
}) : () -> ()

