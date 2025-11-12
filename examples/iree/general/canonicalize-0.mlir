"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xf16>) -> tensor<?xf16>, sym_name = "fold_cast_into_resource_cast"}> ({
  ^bb0(%arg0: tensor<32xf16>):
    %0 = "tensor.cast"(%arg0) : (tensor<32xf16>) -> tensor<?xf16>
    %1 = "iree_gpu.buffer_resource_cast"(%0) : (tensor<?xf16>) -> tensor<?xf16>
    "func.return"(%1) : (tensor<?xf16>) -> ()
  }) : () -> ()
}) : () -> ()

