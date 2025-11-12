"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_float) -> !torch_vtensor, sym_name = "torch.aten.addtensor_with_quantization"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_float):
      %0 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
      %2 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %1, %0) : (!torch_vtensor, !torch_float, !torch_int) -> !torch_vtensor
      %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %1, %0) : (!torch_vtensor, !torch_float, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%3, %4, %arg2) : (!torch_vtensor, !torch_vtensor, !torch_float) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()