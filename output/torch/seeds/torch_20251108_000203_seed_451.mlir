"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_add_then_eq"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.torch.aten.eq.Tensor"(%0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.torch.aten._shape_as_tensor"(%1) : (!torch_vtensor) -> !torch_vtensor
    %3 = "torch.torch.prim.NumToTensor.Scalar"(%2) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()