"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_aten_add$vector_dialect$main"}> ({
    %0 = "torch_vtensor"() : () -> !torch_vtensor
    %1 = "torch_vtensor"() : () -> !torch_vtensor
    %2 = "torch.aten.add"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()