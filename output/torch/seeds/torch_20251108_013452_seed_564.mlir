"builtin.module"() ({
  "func.func"() <{function_type = (!torch_Device, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add.Tensor"}> ({
  ^bb0(%arg0: !torch_Device, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.aten.add.Tensor"(%arg1, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()