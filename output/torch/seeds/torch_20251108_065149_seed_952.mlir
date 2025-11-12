"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3x64, !torch_vtensor_3x64) -> !torch_vtensor_3x64, sym_name = "custom_add_with_mod"}> ({
    ^bb0(%arg0: !torch_vtensor_3x64, %arg1: !torch_vtensor_3x64):
      %0 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1, %1) : (!torch_vtensor_3x64, !torch_vtensor_3x64, !torch_int) -> !torch_vtensor_3x64
      %3 = "torch.aten.mod"(%2, %0) : (!torch_vtensor_3x64, !torch_int) -> !torch_vtensor_3x64
      "func.return"(%3) : (!torch_vtensor_3x64) -> ()
  }) : () -> ()
}) : () -> ()