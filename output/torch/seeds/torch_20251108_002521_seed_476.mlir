"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_str, !torch_constant_int, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz"}> ({
    ^bb0(%arg0: !torch_constant_str, %arg1: !torch_constant_int, %arg2: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_constant_int
      %1 = "torch.constant.none"() : () -> !torch_constant_none
      %2 = "torch.aten.slice.Tensor"(%arg2, %0, %0, %1, %1) : (!torch_vtensor, !torch_constant_int, !torch_constant_int, !torch_constant_none, !torch_constant_none) -> !torch_vtensor
      %3 = "torch.aten.size.int"(%2, %0) : (!torch_vtensor, !torch_constant_int) -> !torch_constant_int
      %4 = "torch.prim.ListConstruct"(%0, %3) : (!torch_constant_int, !torch_constant_int) -> !torch_list
      %5 = "torch.aten.view"(%2, %4) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %6 = "torch.aten.add.Tensor"(%5, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()