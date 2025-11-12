"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "quant_dequant_test"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.float"() <{value = 0.0625 : f64}> : () -> !torch_float
      %1 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_int
      %2 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1) : (!torch_vtensor, !torch_float, !torch_int) -> !torch_qtensor
      %3 = "torch.aten.dequantize.tensor"(%2) : (!torch_qtensor) -> !torch_vtensor
      %4 = "torch.aten.add.Tensor"(%arg1, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.eq.Tensor"(%arg1, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()