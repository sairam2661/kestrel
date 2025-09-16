"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, f32) -> tensor<?xf32>, sym_name = "simple_tensor_test"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: f32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.insert"(%arg1, %arg0, %0) : (f32, tensor<?xf32>, index) -> tensor<?xf32>
    "func.return"(%1) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

