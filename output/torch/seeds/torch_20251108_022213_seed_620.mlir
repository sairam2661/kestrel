"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.view_and_cat"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %4 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %6 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %7 = "torch.prim.ListConstruct"(%5, %6) : (!torch_int, !torch_int) -> !torch_list
    %8 = "torch.aten.view"(%arg1, %7) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %9 = "torch.aten.cat"(%4, %8, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()