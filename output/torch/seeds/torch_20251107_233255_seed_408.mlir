"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_cat_index_select_mixed"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %4 = "torch.aten.size.int"(%arg1, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %5 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_int) -> !torch_vtensor
      %6 = "torch.prim.NumToTensor.Scalar"(%4) : (!torch_int) -> !torch_vtensor
      %7 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      %8 = "torch.aten.index_select"(%7, %0, %5) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()