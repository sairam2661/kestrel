"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fusion"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      %3 = "torch.aten.mul.Tensor"(%2, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.slice.Tensor"(%3, %0, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      %6 = "torch.aten.view"(%5, %0, %0) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %7 = "torch.aten.index_select"(%6, %0, %4) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.add.Tensor"(%7, %2, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()