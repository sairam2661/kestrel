"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf16>) -> (tensor<?xf16>, tensor<?xf16>), sym_name = "tensor_barrier_multiple_inputs"}> ({
  ^bb0(%arg0: tensor<?xf16>):
    %0:2 = "iree_gpu.value_barrier"(%arg0, %arg0) : (tensor<?xf16>, tensor<?xf16>) -> (tensor<?xf16>, tensor<?xf16>)
    "func.return"(%0#0, %0#1) : (tensor<?xf16>, tensor<?xf16>) -> ()
  }) : () -> ()
}) : () -> ()

