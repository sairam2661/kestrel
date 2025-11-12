"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_25465530392608270678, !torch_vtensor_44603349453708468970) -> !torch_vtensor_19200228923554455591, sym_name = "torch_aten_add_tensor$auto_nograd"}> ({
  ^bb0(%arg0: !torch_vtensor_25465530392608270678, %arg1: !torch_vtensor_44603349453708468970):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = -5 : i64}> : () -> !torch_int
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1, %1) : (!torch_vtensor_25465530392608270678, !torch_vtensor_44603349453708468970, !torch_int) -> !torch_vtensor_19200228923554455591
    "func.return"(%2) : (!torch_vtensor_19200228923554455591) -> ()
  }) : () -> ()
}) : () -> ()