"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_custom_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.none"() : () -> !torch_vtensor
      %1 = "torch.aten.cat"(%arg0, %arg1) <{dim = 0 : i64}> : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %2 = "torch.constant.float"() <{value = 2.000000e+00 : f32}> : () -> !torch_vtensor
      %3 = "torch.aten.eq.Tensor"(%1, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten._shape_as_tensor"(%3) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()