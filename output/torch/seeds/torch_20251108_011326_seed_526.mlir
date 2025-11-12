"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch_aten_view_stress"}> ({
  ^bb0(%arg0: !torch_vtensor_literal):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor_literal, !torch_list_int) -> !torch_vtensor_literal
    "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()