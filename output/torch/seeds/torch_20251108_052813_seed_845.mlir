"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.float"() <{value = 2.5}> : () -> !torch_vtensor
    %1 = "torch.constant.float"() <{value = 3.5}> : () -> !torch_vtensor
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.mul.Tensor"(%2, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.sub.Tensor"(%3, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.view"(%4, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()