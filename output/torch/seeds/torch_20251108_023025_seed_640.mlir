"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_aten_concatenate"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.concat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()