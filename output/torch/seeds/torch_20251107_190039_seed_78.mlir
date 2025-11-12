"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_rho16, !torch_vtensor_rho16) -> !torch_vtensor_rho16, sym_name = "torch.fuzz.mixed_ops"}> ({
  ^bb0(%arg0: !torch_vtensor_rho16, %arg1: !torch_vtensor_rho16):
    %c1_0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c0_0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c2_0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %c4_0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %c3_0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %0 = "torch.aten.index_select"(%arg0, %c1_0, %arg1) : (!torch_vtensor_rho16, !torch_int, !torch_vtensor_rho16) -> !torch_vtensor_rho16
    %1 = "torch.aten.slice.Tensor"(%0, %c1_0, %c3_0, %c2_0, %c1_0) : (!torch_vtensor_rho16, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_rho16
    %2 = "torch.aten.view"(%1, %c4_0, %c4_0) : (!torch_vtensor_rho16, !torch_int, !torch_int) -> !torch_vtensor_rho16
    %3 = "torch.aten.cat"(%arg1, %arg0) : (!torch_vtensor_rho16, !torch_vtensor_rho16) -> !torch_vtensor_rho16
    "func.return"(%3) : (!torch_vtensor_rho16) -> ()
  }) : () -> ()
}) : () -> ()