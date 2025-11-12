"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add.Tensor"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_vtensor
      %1 = "torch.aten.add.Tensor"(%arg0, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %2 = "torch.constant.float"() <{value = 2.71 : f64}> : () -> !torch_vtensor
      %3 = "torch.aten.slice.Tensor"(%1, %2, %0, %2, %0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%3, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.item"(%4) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()