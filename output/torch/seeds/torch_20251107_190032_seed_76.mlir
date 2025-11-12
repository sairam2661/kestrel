"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_16_256_f32, !torch_int, !torch_int) -> !torch_vtensor_16_256_f32, sym_name = "torch.aten.slice_select"}> ({
  ^bb0(%arg0: !torch_vtensor_16_256_f32, %arg1: !torch_int, %arg2: !torch_int):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.aten.index_select"(%arg0, %arg1, %arg2) : (!torch_vtensor_16_256_f32, !torch_int, !torch_int) -> !torch_vtensor_16_256_f32
    %2 = "torch.aten.slice.Tensor"(%1, %arg1, %0, %0, %2) : (!torch_vtensor_16_256_f32, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_16_256_f32
    "func.return"(%2) : (!torch_vtensor_16_256_f32) -> ()
  }) : () -> ()
}) : () -> ()