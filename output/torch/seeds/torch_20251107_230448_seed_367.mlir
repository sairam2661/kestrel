"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensor_tensor_t, !torchvTensor_tensor_t) -> !torchvTensor_tensor_t, sym_name = "fuzz_cross_dialect"}> ({
    ^bb0(%arg0: !torchvTensor_tensor_t, %arg1: !torchvTensor_tensor_t):
      %0 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torchvTensor_tensor_t
      %1 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torchvTensor_tensor_t
      %2 = "torch.aten._shape_as_tensor"(%arg0) : (!torchvTensor_tensor_t) -> !torchvTensor_tensor_t
      %3 = "torch.aten.slice.Tensor"(%arg0, %1, %0, %2) : (!torchvTensor_tensor_t, !torchvTensor_tensor_t, !torchvTensor_tensor_t, !torchvTensor_tensor_t) -> !torchvTensor_tensor_t
      %4 = "torch.aten.cat"(%arg0, %3) : (!torchvTensor_tensor_t, !torchvTensor_tensor_t) -> !torchvTensor_tensor_t
      "func.return"(%4) : (!torchvTensor_tensor_t) -> ()
  }) : () -> ()
}) : () -> ()