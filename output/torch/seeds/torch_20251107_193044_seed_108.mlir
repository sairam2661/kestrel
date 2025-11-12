"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.index_select_stress"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %6 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch_int
    %7 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch_int
    %8 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
    %9 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4, %5, %6, %7, %8) : (!torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
    %10 = "torch.aten.index_select"(%arg0, %9, %arg1) : (!torch_vtensor, !torch_list_int, !torch_vtensor) -> !torch_vtensor
    "func.return"(%10) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()