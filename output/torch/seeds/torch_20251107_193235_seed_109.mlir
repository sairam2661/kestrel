"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_t, !torch_int) -> !torch_vtensor_t, sym_name = "multi_dialect_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor_t, %arg1: !torch_int):
    %0 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
    %1 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_t) -> !torch_int
    %2 = "torch_constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.aten.index_select"(%arg0, %2, %arg1) : (!torch_vtensor_t, !torch_int, !torch_int) -> !torch_vtensor_t
    %4 = "torch.aten.item"(%3) : (!torch_vtensor_t) -> !torch_int
    %5 = "torch.aten.slice.Tensor"(%arg0, %2, %4, %1) : (!torch_vtensor_t, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_t
    "func.return"(%5) : (!torch_vtensor_t) -> ()
  }) : () -> ()
}) : () -> ()