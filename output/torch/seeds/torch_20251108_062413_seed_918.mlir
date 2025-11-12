"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_4x3xf32, !torch_vtensor_4x3xf32) -> !torch_vtensor_4x3x1xi1, sym_name = "torch_aten_eq_Tensor_mixed_type"}> ({
  ^bb0(%arg0: !torch_vtensor_4x3xf32, %arg1: !torch_vtensor_4x3xf32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 2.5 : f32}> : () -> !torch_float
    %2 = "torch.aten.add.Tensor"(%arg0, %1, %0) : (!torch_vtensor_4x3xf32, !torch_float, !torch_int) -> !torch_vtensor_4x3xf32
    %3 = "torch.aten.add.Tensor"(%arg1, %1, %0) : (!torch_vtensor_4x3xf32, !torch_float, !torch_int) -> !torch_vtensor_4x3xf32
    %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_vtensor_4x3xf32, !torch_vtensor_4x3xf32) -> !torch_vtensor_4x3x1xi1
    "func.return"(%4) : (!torch_vtensor_4x3x1xi1) -> ()
  }) : () -> ()
}) : () -> ()