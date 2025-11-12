"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.vtensor_concatenate"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.relu"(%0) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.aten.add"(%1, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()