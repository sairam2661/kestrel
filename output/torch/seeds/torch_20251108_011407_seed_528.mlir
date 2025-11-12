"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2_8_16_f32, !torch_int) -> !torch_vtensor_2_8_16_f32, sym_name = "dynamic_slice"}> ({
  ^bb0(%arg0: !torch_vtensor_2_8_16_f32, %arg1: !torch_int):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.none"() : () -> !torch_none
    %3 = "torch.aten.slice.Tensor"(%arg0, %1, %arg1, %2, %0) : (!torch_vtensor_2_8_16_f32, !torch_int, !torch_int, !torch_none, !torch_int) -> !torch_vtensor_2_8_16_f32
    "func.return"(%3) : (!torch_vtensor_2_8_16_f32) -> ()
  }) : () -> ()
}) : () -> ()