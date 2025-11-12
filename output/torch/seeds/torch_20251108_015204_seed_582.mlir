"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32_3x3x3, !torch_vtensor_i32_3x3x3) -> !torch_vtensor_i32_3x3x3, sym_name = "addAndSlice"}> ({
    ^bb0(%arg0: !torch_vtensor_i32_3x3x3, %arg1: !torch_vtensor_i32_3x3x3):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_i32_3x3x3, !torch_vtensor_i32_3x3x3) -> !torch_vtensor_i32_3x3x3
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %4 = "torch.aten.slice.Tensor"(%0, %1, %2, %3) : (!torch_vtensor_i32_3x3x3, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_i32_1x3x3
      "func.return"(%4) : (!torch_vtensor_i32_1x3x3) -> ()
  }) : () -> ()
}) : () -> ()