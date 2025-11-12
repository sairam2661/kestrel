"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_list, !torch_vtensor_list) -> !torch_vtensor_list, sym_name = "torch.aten.cat"}> ({
  ^bb0(%arg0: !torch_vtensor_list, %arg1: !torch_vtensor_list):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
    %3 = "torch.aten.cat"(%arg0, %2) : (!torch_vtensor_list, !torch_list) -> !torch_vtensor_list
    %4 = "torch.aten.cat"(%3, %arg1) : (!torch_vtensor_list, !torch_vtensor_list) -> !torch_vtensor_list
    "func.return"(%4) : (!torch_vtensor_list) -> ()
  }) : () -> ()
}) : () -> ()