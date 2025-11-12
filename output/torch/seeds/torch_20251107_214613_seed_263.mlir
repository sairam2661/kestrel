"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1024_1024_32_f32, !torch_vtensor_1024_1024_32_i32) -> !torch_vtensor_1024_1024_32_f32, sym_name = "complex_mask_fill"}> ({
  ^bb0(%arg0: !torch_vtensor_1024_1024_32_f32, %arg1: !torch_vtensor_1024_1024_32_i32):
    %0 = "torch.constant.float"() <{value = 0.001 : f32}> : () -> !torch_vtensor_1
    %1 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_vtensor_1
    %2 = "torch.constant.float"() <{value = 1.0 : f32}> : () -> !torch_vtensor_1
    %3 = "torch.aten.add.Tensor"(%arg0, %0) : (!torch_vtensor_1024_1024_32_f32, !torch_vtensor_1) -> !torch_vtensor_1024_1024_32_f32
    %4 = "torch.aten.mul.Tensor"(%3, %2) : (!torch_vtensor_1024_1024_32_f32, !torch_vtensor_1) -> !torch_vtensor_1024_1024_32_f32
    %5 = "torch.aten.masked_fill.Tensor"(%4, %arg1, %1) : (!torch_vtensor_1024_1024_32_f32, !torch_vtensor_1024_1024_32_i32, !torch_vtensor_1) -> !torch_vtensor_1024_1024_32_f32
    "func.return"(%5) : (!torch_vtensor_1024_1024_32_f32) -> ()
  }) : () -> ()
}) : () -> ()