"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_5_4_3_2_f32, !torch_int) -> !torch_vtensor_5_4_3_2_f32, sym_name = "torch.aten.slice.Tensor.fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor_5_4_3_2_f32, %arg1: !torch_int):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %4 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2, %3) : (!torch_vtensor_5_4_3_2_f32, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_5_4_3_2_f32
    "func.return"(%4) : (!torch_vtensor_5_4_3_2_f32) -> ()
  }) : () -> ()
}) : () -> ()