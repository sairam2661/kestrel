"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.unary"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.add.Tensor"(%0, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()