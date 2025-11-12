"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_aten_abs_div$basic"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.abs"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.div.Tensor"(%0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()