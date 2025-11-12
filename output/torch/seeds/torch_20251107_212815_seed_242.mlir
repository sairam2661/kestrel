"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_composition_and_slice"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.aten.view"(%arg0, %2) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.cat"(%arg1, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %6 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %7 = "torch.aten.add.Tensor"(%6, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.eq.Tensor"(%7, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()