"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3x4_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_3x5_f32, sym_name = "torch.matmul_unusual"}> ({
  ^bb0(%arg0: !torch_vtensor_3x4_f32, %arg1: !torch_vtensor_4x5_f32):
    %0 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %2 = "torch.aten.addmm"(%0, %arg0, %arg1) : (!torch_int, !torch_vtensor_3x4_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_3x5_f32
    %3 = "torch.aten.clamp"(%2, %1, %1) : (!torch_vtensor_3x5_f32, !torch_float, !torch_float) -> !torch_vtensor_3x5_f32
    "func.return"(%3) : (!torch_vtensor_3x5_f32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2x3_f32, !torch_vtensor_3x4_f32) -> !torch_vtensor_2x4_f32, sym_name = "torch.matmul_nested"}> ({
  ^bb0(%arg0: !torch_vtensor_2x3_f32, %arg1: !torch_vtensor_3x4_f32):
    %0 = "torch.matmul"(%arg0, %arg1) : (!torch_vtensor_2x3_f32, !torch_vtensor_3x4_f32) -> !torch_vtensor_2x4_f32
    "func.return"(%0) : (!torch_vtensor_2x4_f32) -> ()
  }) : () -> ()
}) : () -> ()