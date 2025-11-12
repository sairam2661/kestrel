"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "unusual_sequence_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 1.5 : f32}> : () -> !torch_float
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %6 = "torch.aten.view"(%4, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %7 = "torch.aten.view"(%5, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %8 = "torch.aten.add.Tensor"(%6, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %9 = "torch.aten.eq.Tensor"(%8, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %10 = "torch.aten.item"(%9) : (!torch_bool) -> !torch_int
      %11 = "torch.prim.NumToTensor.Scalar"(%10) : (!torch_int) -> !torch_vtensor
      "func.return"(%8, %11) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()