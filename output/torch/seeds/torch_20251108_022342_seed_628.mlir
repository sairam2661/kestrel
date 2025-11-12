"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3x4_si32, !torch_constant_int) -> !torch_vtensor_3x4_f32, sym_name = "torch_aten_addscalar_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor_3x4_si32, %arg1: !torch_constant_int):
    %0 = "torch.constant.float"() <{value = 5.5}> : () -> !torch_constant_float
    %1 = "torch.aten.view"(%arg0) : (!torch_vtensor_3x4_si32) -> !torch_vtensor_12_f32
    %2 = "torch.aten.slice.Tensor"(%1, %arg1, %arg1, %arg1, %arg1) : (!torch_vtensor_12_f32, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_12_f32
    %3 = "torch.aten.add.Tensor"(%2, %0) : (!torch_vtensor_12_f32, !torch_constant_float) -> !torch_vtensor_12_f32
    %4 = "torch.aten.slice.Tensor"(%3, %arg1, %arg1, %arg1, %arg1) : (!torch_vtensor_12_f32, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_12_f32
    %5 = "torch.aten.view"(%4) : (!torch_vtensor_12_f32) -> !torch_vtensor_3x4_f32
    "func.return"(%5) : (!torch_vtensor_3x4_f32) -> ()
  }) : () -> ()
}) : () -> ()