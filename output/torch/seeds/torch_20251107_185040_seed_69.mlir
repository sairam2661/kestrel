"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch_vtensor
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.mul.Tensor"(%1, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.sin"(%2) : (!torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.cos"(%2) : (!torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.cat"(%3, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()