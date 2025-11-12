"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3, !torch_vtensor_4) -> !torch_vtensor_5, sym_name = "torch.aten.add.Tensor$uncommon"}> ({
    ^bb0(%arg0: !torch_vtensor_3, %arg1: !torch_vtensor_4):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_3) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_4) -> !torch_int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %4 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor_3, !torch_list_int) -> !torch_vtensor_5
      %5 = "torch.aten.view"(%arg1, %3) : (!torch_vtensor_4, !torch_list_int) -> !torch_vtensor_5
      %6 = "torch.aten.add.Tensor"(%4, %5, %2) : (!torch_vtensor_5, !torch_vtensor_5, !torch_int) -> !torch_vtensor_5
      "func.return"(%6) : (!torch_vtensor_5) -> ()
  }) : () -> ()
}) : () -> ()