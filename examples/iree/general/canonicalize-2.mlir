"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x32xf16>) -> tensor<32x?xf16>, sym_name = "split_cast_adding_and_removing_static_info"}> ({
  ^bb0(%arg0: tensor<?x32xf16>):
    %0 = "tensor.cast"(%arg0) : (tensor<?x32xf16>) -> tensor<32x?xf16>
    %1 = "iree_gpu.buffer_resource_cast"(%0) : (tensor<32x?xf16>) -> tensor<32x?xf16>
    "func.return"(%1) : (tensor<32x?xf16>) -> ()
  }) : () -> ()
}) : () -> ()

