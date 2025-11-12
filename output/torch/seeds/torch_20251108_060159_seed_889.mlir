"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "torch.aten.index_select_mixed"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %5 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor_type, !torch_int, !torch_vtensor_type) -> !torch_vtensor_type
      %6 = "torch.aten.index_select"(%5, %1, %2) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
      %7 = "torch.aten.index_select"(%6, %2, %3) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
      %8 = "torch.aten.index_select"(%7, %3, %4) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
      %9 = "torch.aten.index_select"(%8, %4, %0) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
      "func.return"(%9) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()