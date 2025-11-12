"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "quantize_dequantize_unary"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 128 : i64}> : () -> !torch_int
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_none) -> !torch_vtensor
      %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_none) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()