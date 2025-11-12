"builtin.module" () ({
  "func.func" () <{function_type = (!torch_vtensor_float32_1x32x16, !torch_vtensor_float32_16x16) -> !torch_vtensor_float32_1x32x16, sym_name = "complex_matmul"}> ({
    ^bb0 (%arg0: !torch_vtensor_float32_1x32x16, %arg1: !torch_vtensor_float32_16x16):
      %0 = "torch.constant.int" () <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int" () <{value = 32 : i64}> : () -> !torch_int
      %2 = "torch.constant.int" () <{value = 16 : i64}> : () -> !torch_int
      %3 = "torch.prim.ListConstruct" (%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %4 = "torch.aten.index_select" (%arg0, %0, %1) : (!torch_vtensor_float32_1x32x16, !torch_int, !torch_int) -> !torch_vtensor_float32_1x16
      %5 = "torch.aten.matmul" (%4, %arg1) : (!torch_vtensor_float32_1x16, !torch_vtensor_float32_16x16) -> !torch_vtensor_float32_1x16
      %6 = "torch.aten.add.Tensor" (%5, %arg0) : (!torch_vtensor_float32_1x16, !torch_vtensor_float32_1x32x16) -> !torch_vtensor_float32_1x32x16
      "func.return" (%6) : (!torch_vtensor_float32_1x32x16) -> ()
  }) : () -> ()
}) : () -> ()