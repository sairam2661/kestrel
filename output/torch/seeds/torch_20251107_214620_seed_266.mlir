"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3d_1_f64, !torch_vtensor_3d_1_f64) -> !torch_vtensor_3d_1_f64, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: !torch_vtensor_3d_1_f64, %arg1: !torch_vtensor_3d_1_f64):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_3d_1_f64, !torch_vtensor_3d_1_f64) -> !torch_vtensor_3d_1_f64
    %1 = "torch.aten.tanh"(%0) : (!torch_vtensor_3d_1_f64) -> !torch_vtensor_3d_1_f64
    %2 = "torch.aten.mul"(%1, %arg0) : (!torch_vtensor_3d_1_f64, !torch_vtensor_3d_1_f64) -> !torch_vtensor_3d_1_f64
    %3 = "torch.aten.sub"(%2, %arg1) : (!torch_vtensor_3d_1_f64, !torch_vtensor_3d_1_f64) -> !torch_vtensor_3d_1_f64
    "func.return"(%3) : (!torch_vtensor_3d_1_f64) -> ()
  }) : () -> ()
}) : () -> ()