"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_maniupulations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %5 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %6 = "torch.aten.view"(%arg0, %5) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      %7 = "torch.prim.ListConstruct"(%3, %2, %1) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %8 = "torch.aten.view"(%arg1, %7) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      %9 = "torch.aten.cat"(%6, %8, %2) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      %10 = "torch.aten.index_select"(%9, %2, %arg2) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      %11 = "torch.aten.slice.Tensor"(%9, %0, %1, %3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %12 = "torch.aten.add.Tensor"(%10, %11) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%12) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()