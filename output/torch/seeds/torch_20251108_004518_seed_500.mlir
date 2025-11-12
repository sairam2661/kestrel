"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_max_pool"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %3 = "torch.constant.none"() : () -> !torch_none
      %4 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list_int
      %5 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %6 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %7 = "torch.aten.max_pool2d"(%arg0, %4, %5, %6, %2, %2, %3) : (!torch_vtensor, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool, !torch_bool, !torch_none) -> !torch_vtensor
      %8 = "torch.aten.add"(%arg1, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()