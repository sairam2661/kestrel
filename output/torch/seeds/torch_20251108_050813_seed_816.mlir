"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_4x65x256_f32, !torch_int) -> !torch_vtensor_4x1x256_f32, sym_name = "torch.aten.slice.last.static$slice_like"}> ({
  ^bb0(%arg0: !torch_vtensor_4x65x256_f32, %arg1: !torch_int):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %2 = "torch.aten.slice.Tensor"(%arg0, %arg1, %1, %0, %arg1) : (!torch_vtensor_4x65x256_f32, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_4x1x256_f32
    "func.return"(%2) : (!torch_vtensor_4x1x256_f32) -> ()
  }) : () -> ()
}) : () -> ()