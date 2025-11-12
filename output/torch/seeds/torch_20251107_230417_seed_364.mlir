"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_slice_cat"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %4 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2, %3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %2, %3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %6 = "torch.aten.slice.Tensor"(%arg2, %0, %1, %2, %3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %7 = "torch.aten.cat"(%4, %5, %6) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()