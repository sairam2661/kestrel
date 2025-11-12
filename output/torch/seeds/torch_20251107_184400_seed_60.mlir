"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "complex_fusion"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_0) -> !torch_vtensor_3
    %1 = "torch.aten.slice.Tensor"(%arg0, %0, %c0_i64, %c3_i64, %c1_i64) : (!torch_vtensor_0, !torch_vtensor_3, !torch_i64, !torch_i64, !torch_i64) -> !torch_vtensor_4
    %2 = "torch.aten.index_select"(%arg1, %c0_i64, %0) : (!torch_vtensor_1, !torch_i64, !torch_vtensor_3) -> !torch_vtensor_5
    %3 = "torch.aten.cat"(%1, %2) : (!torch_vtensor_4, !torch_vtensor_5) -> !torch_vtensor_6
    %4 = "torch.constant.float"() <{value = 2.0 : f32}> : () -> !torch_f32
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor_6, !torch_f32) -> !torch_vtensor_7
    "func.return"(%5) : (!torch_vtensor_7) -> ()
  }) : () -> ()
}) : () -> ()