"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2d_f32, !torch_vtensor_1d_f32) -> !torch_vtensor_1d_f32, sym_name = "fuse_and_slice"}> ({
  ^bb0(%arg0: !torch_vtensor_2d_f32, %arg1: !torch_vtensor_1d_f32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %4 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor_2d_f32, !torch_vtensor_1d_f32) -> !torch_vtensor_1d_f32
    %5 = "torch.aten.add.Tensor"(%4, %arg1, %3) : (!torch_vtensor_1d_f32, !torch_vtensor_1d_f32, !torch_bool) -> !torch_vtensor_1d_f32
    %6 = "torch.aten.slice.Tensor"(%5, %0, %1, %2) : (!torch_vtensor_1d_f32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1d_f32
    "func.return"(%6) : (!torch_vtensor_1d_f32) -> ()
  }) : () -> ()
}) : () -> ()