"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_10_3_4_f32, !torch_vtensor_10_4_5_f32) -> !torch_vtensor_10_3_5_f32, sym_name = "torch_aten_bmm_advanced"}> ({
  ^bb0(%arg0: !torch_vtensor_10_3_4_f32, %arg1: !torch_vtensor_10_4_5_f32):
    %0 = "torch.aten.size"(%arg0) : (!torch_vtensor_10_3_4_f32) -> !torch_listint
    %1 = "torch.aten.size"(%arg1) : (!torch_vtensor_10_4_5_f32) -> !torch_listint
    %2 = "torch.aten.index"(%arg0, %0) : (!torch_vtensor_10_3_4_f32, !torch_listint) -> !torch_vtensor_10_3_4_f32
    %3 = "torch.aten.index"(%arg1, %1) : (!torch_vtensor_10_4_5_f32, !torch_listint) -> !torch_vtensor_10_4_5_f32
    %4 = "torch.aten.bmm"(%2, %3) : (!torch_vtensor_10_3_4_f32, !torch_vtensor_10_4_5_f32) -> !torch_vtensor_10_3_5_f32
    "func.return"(%4) : (!torch_vtensor_10_3_5_f32) -> ()
  }) : () -> ()
}) : () -> ()