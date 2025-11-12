"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_19_19_19_19_f32, !torch_vtensor_19_19_19_19_f32, !torch_vtensor_19_19_19_19_f32) -> !torch_vtensor_19_19_19_19_f32, sym_name = "torch.aten.add$multi.Tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_19_19_19_19_f32, %arg1: !torch_vtensor_19_19_19_19_f32, %arg2: !torch_vtensor_19_19_19_19_f32):
    %0 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch_float
    %1 = "torch.constant.float"() <{value = 0.3 : f32}> : () -> !torch_float
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_19_19_19_19_f32, !torch_vtensor_19_19_19_19_f32) -> !torch_vtensor_19_19_19_19_f32
    %3 = "torch.aten.mul.Tensor"(%2, %0) : (!torch_vtensor_19_19_19_19_f32, !torch_float) -> !torch_vtensor_19_19_19_19_f32
    %4 = "torch.aten.add.Tensor"(%3, %arg2) : (!torch_vtensor_19_19_19_19_f32, !torch_vtensor_19_19_19_19_f32) -> !torch_vtensor_19_19_19_19_f32
    %5 = "torch.aten.mul.Tensor"(%4, %1) : (!torch_vtensor_19_19_19_19_f32, !torch_float) -> !torch_vtensor_19_19_19_19_f32
    "func.return"(%5) : (!torch_vtensor_19_19_19_19_f32) -> ()
  }) : () -> ()
}) : () -> ()