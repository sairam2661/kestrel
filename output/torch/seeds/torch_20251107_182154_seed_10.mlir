"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "dynamic_view_and_cat"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %4 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_int
      %5 = "torch.aten.size.int"(%arg0, %2) : (!torch_vtensor, !torch_int) -> !torch_int
      %6 = "torch.aten.size.int"(%arg1, %1) : (!torch_vtensor, !torch_int) -> !torch_int
      %7 = "torch.aten.size.int"(%arg1, %2) : (!torch_vtensor, !torch_int) -> !torch_int
      %8 = "torch.prim.ListConstruct"(%4, %5, %0) : (!torch_int, !torch_int, !torch_int) -> !torch_list
      %9 = "torch.aten.view"(%arg0, %8) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %10 = "torch.prim.ListConstruct"(%6, %7, %0) : (!torch_int, !torch_int, !torch_int) -> !torch_list
      %11 = "torch.aten.view"(%arg1, %10) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %12 = "torch.prim.ListConstruct"(%9, %11) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %13 = "torch.aten.cat"(%12, %2) : (!torch_list, !torch_int) -> !torch_vtensor
      "func.return"(%13) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()