"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "torch.aten.index_select_mixed_types"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.none"() : () -> !torch_none
    %2 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor_type, !torch_int, !torch_vtensor_type) -> !torch_vtensor_type
    "func.return"(%2) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()