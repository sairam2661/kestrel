"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_complex_example"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.constant.none"() : () -> !torch_none
      %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
      %5 = "torch.prim.ListConstruct"(%2, %3) : (!torch_int, !torch_none) -> !torch_list
      %6 = "torch.aten.view"(%arg0, %4) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %7 = "torch.aten.slice.Tensor"(%6, %1, %0, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %8 = "torch.aten.eq.Tensor"(%arg1, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %9 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()