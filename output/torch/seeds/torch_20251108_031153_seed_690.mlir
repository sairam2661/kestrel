"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_quantized_add"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 255 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %4 = "torch._make_per_tensor_quantized_tensor"(%arg0, %0, %1, %3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%4, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()