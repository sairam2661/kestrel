"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "unusual_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 5.5 : f64}> : () -> !torch_float
      %2 = "torch._make_per_tensor_quantized_tensor"(%arg0, %0, %1) : (!torch_vtensor, !torch_int, !torch_float) -> !torch_vtensor
      %3 = "torch.aten.slice.Tensor"(%2, %0, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %4 = "torch.aten._shape_as_tensor"(%3) : (!torch_vtensor) -> !torch_vtensor
      %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %6 = "torch.aten.cat"(%4, %5) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()