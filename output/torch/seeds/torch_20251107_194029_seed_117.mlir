"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0d_f32, !torch_vtensor_0d_f32) -> !torch_vtensor_1d_f32, sym_name = "torch_aten_add_tensor_0d_0d"}> ({
  ^bb0(%arg0: !torch_vtensor_0d_f32, %arg1: !torch_vtensor_0d_f32):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_0d_f32, !torch_vtensor_0d_f32) -> !torch_vtensor_0d_f32
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.view"(%0, %1) : (!torch_vtensor_0d_f32, !torch_int) -> !torch_vtensor_1d_f32
    "func.return"(%2) : (!torch_vtensor_1d_f32) -> ()
  }) : () -> ()
}) : () -> ()