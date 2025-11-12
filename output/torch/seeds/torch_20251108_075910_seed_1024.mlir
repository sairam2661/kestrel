"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_pad_and_view"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch_int
      %4 = "torch.prim.ListConstruct"(%0, %1, %2, %3) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list
      %5 = "torch.aten.replication_pad2d"(%arg0, %4) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %6 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch_int
      %7 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
      %8 = "torch.aten.view"(%5, %6, %7) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()