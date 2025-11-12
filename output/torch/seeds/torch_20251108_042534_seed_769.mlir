"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.index_select_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list
      %4 = "torch.prim.ListConstruct"(%2, %1) : (!torch_int, !torch_int) -> !torch_list
      %5 = "torch.aten.index_select"(%arg0, %1, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.view"(%5, %3) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %7 = "torch.aten.eq.Tensor"(%5, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %8 = "torch.aten.index_select"(%arg0, %2, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      %9 = "torch.aten.view"(%8, %4) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %10 = "torch.aten.eq.Tensor"(%8, %9) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      "func.return"(%10) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()