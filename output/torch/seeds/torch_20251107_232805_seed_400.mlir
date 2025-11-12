"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_list) -> !torch_vtensor, sym_name = "custom_index_select"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_list):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor, !torch_int, !torch_list) -> !torch_vtensor
      "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_vtensor, !torch_list) -> !torch_vtensor, sym_name = "custom_cat"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_list):
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %3 = "torch.aten.cat"(%arg1, %2) : (!torch_list, !torch_int) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()