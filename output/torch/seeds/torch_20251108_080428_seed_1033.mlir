"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "cross_dialect_complexity_test"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor
      %4 = "torch.constant.none"() : () -> !torch_vtensor
      %5 = "torch.prim.ListConstruct"(%0, %1, %2, %3) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.cat"(%5, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.index_select"(%7, %2, %6) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()