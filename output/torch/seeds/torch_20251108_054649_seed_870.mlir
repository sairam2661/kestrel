"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.constant.none"() : () -> !torch_vtensor
    %2 = "torch.prim.ListConstruct"(%arg0, %arg1, %0, %1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.constant.str"() <{value = "test"}> : () -> !torch_vtensor
    %4 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.cat"(%2) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%6, %5) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()