"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_cross_dialect_complexity"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.index_select"(%arg0, %0, %0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %2 = "torch.constant.float"() <{value = 3.14159 : f64}> : () -> !torch_vtensor
      %3 = "torch.aten.cat"(%arg1, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.index_select"(%arg1, %4, %4) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.cat"(%5, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()