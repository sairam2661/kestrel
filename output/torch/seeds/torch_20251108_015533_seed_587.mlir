"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_concat_and_size"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0) : (!torch_vtensor) -> !torch_int
      %2 = "torch.constant.float"() <{value = 2.500000e+00 : f64}> : () -> !torch_float
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%0, %2, %1, %1) : (!torch_vtensor, !torch_float, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()