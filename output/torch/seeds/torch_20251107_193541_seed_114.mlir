"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_int
      %4 = "torch.aten.size.int"(%arg1, %1) : (!torch_vtensor, !torch_int) -> !torch_int
      %5 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_int) -> !torch_vtensor
      %6 = "torch.prim.NumToTensor.Scalar"(%4) : (!torch_int) -> !torch_vtensor
      %7 = "torch.prim.ListConstruct"(%5, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %8 = "torch.aten.cat"(%7, %0) : (!torch_list, !torch_int) -> !torch_vtensor
      %9 = "torch.prim.ListConstruct"(%2, %2) : (!torch_int, !torch_int) -> !torch_list
      %10 = "torch.aten.view"(%8, %9) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %11 = "torch.aten.add.Tensor"(%arg0, %arg1, %1) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%11) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()