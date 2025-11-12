"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()