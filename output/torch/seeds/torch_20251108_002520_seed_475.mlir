"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "torch.aten.add_with_index"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_type, !torch_int) -> !torch_int
    %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list_type
    %4 = "torch.aten.index_select"(%arg1, %0, %3) : (!torch_vtensor_type, !torch_int, !torch_list_type) -> !torch_vtensor_type
    %5 = "torch.aten.add.Tensor"(%arg0, %4) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    "func.return"(%5) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()