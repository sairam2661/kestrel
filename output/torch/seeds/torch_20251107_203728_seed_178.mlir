"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_slicing_and_adding"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %4 = "torch.aten.slice.Tensor"(%arg1, %0, %3, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%2, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()