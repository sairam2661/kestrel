"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_float) -> !torch_constant_int, sym_name = "torch_complex_operations"}> ({
    ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_float):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_constant_bool
      %1 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torch_constant_int) -> !torch_tensor
      %2 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_constant_float) -> !torch_tensor
      %3 = "torch.aten.add.Tensor"(%1, %2, %0) : (!torch_tensor, !torch_tensor, !torch_constant_bool) -> !torch_tensor
      %4 = "torch.aten._make_per_tensor_quantized_tensor"(%3, %arg0, %arg0, %arg0) : (!torch_tensor, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_tensor
      %5 = "torch.aten.item"(%4) : (!torch_tensor) -> !torch_constant_int
      "func.return"(%5) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()