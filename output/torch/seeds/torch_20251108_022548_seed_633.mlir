"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_quantize_and_dequantize"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %3 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor
      %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %3, %2, %1) : (!torch_vtensor, !torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%4, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.eq.Tensor"(%5, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()