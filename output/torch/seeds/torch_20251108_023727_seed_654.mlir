"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "index_select_complex"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.aten.index_select"(%arg0, %0, %3) : (!torch_vtensor, !torch_int, !torch_list_int) -> !torch_vtensor
    %5 = "torch.aten.view"(%4, %2, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()