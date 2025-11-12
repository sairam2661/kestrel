"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "torch.aten.fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.aten.index.Tensor"(%arg0, %0) : (!torch_vtensor_type, !torch_int) -> !torch_vtensor_type
      %3 = "torch.aten.index.Tensor"(%arg1, %1) : (!torch_vtensor_type, !torch_int) -> !torch_vtensor_type
      %4 = "torch.prim.ListConstruct"(%2, %3) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_list_type
      %5 = "torch.aten.cat"(%4, %1) : (!torch_list_type, !torch_int) -> !torch_vtensor_type
      "func.return"(%5) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()