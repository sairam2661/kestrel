"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf16>) -> tensor<?xf16>, sym_name = "tensor_barrier"}> ({
  ^bb0(%arg0: tensor<?xf16>):
    %0 = "iree_gpu.value_barrier"(%arg0) : (tensor<?xf16>) -> tensor<?xf16>
    "func.return"(%0) : (tensor<?xf16>) -> ()
  }) : () -> ()
}) : () -> ()

