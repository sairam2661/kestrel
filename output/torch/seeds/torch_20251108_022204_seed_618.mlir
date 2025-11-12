"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor, sym_name = "torch.aten.index_select$complex_view"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int, %arg2: !torch_int):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %4 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %5 = "torch.aten.index_select"(%4, %arg1, %arg2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %7 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %8 = "torch.prim.ListConstruct"(%6, %7) : (!torch_int, !torch_int) -> !torch_list
    %9 = "torch.aten.view"(%5, %8) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()