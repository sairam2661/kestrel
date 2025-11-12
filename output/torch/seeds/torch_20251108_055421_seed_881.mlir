"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32_2x2, !torch_vtensor_f32_2x2) -> !torch_vtensor_i32_2x2, sym_name = "custom_add_multiply"}> ({
  ^bb0(%arg0: !torch_vtensor_i32_2x2, %arg1: !torch_vtensor_f32_2x2):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torch_vtensor_i32_2x2, !torch_vtensor_i32_2x2) -> !torch_vtensor_i32_2x2
    %1 = "torch.aten.mul.Tensor"(%arg1, %arg1) : (!torch_vtensor_f32_2x2, !torch_vtensor_f32_2x2) -> !torch_vtensor_f32_2x2
    %2 = "torch.aten.cast"(%1) : (!torch_vtensor_f32_2x2) -> !torch_vtensor_i32_2x2
    %3 = "torch.aten.add.Tensor"(%0, %2) : (!torch_vtensor_i32_2x2, !torch_vtensor_i32_2x2) -> !torch_vtensor_i32_2x2
    "func.return"(%3) : (!torch_vtensor_i32_2x2) -> ()
  }) : () -> ()
}) : () -> ()