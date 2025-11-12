"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "custom_op_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor_0, !torch_vtensor_1, !torch_int) -> !torch_vtensor_2
    %3 = "torch.aten.mul.Tensor"(%2, %1) : (!torch_vtensor_2, !torch_float) -> !torch_vtensor_2
    %4 = "torch.aten.relu"(%3) : (!torch_vtensor_2) -> !torch_vtensor_2
    "func.return"(%4) : (!torch_vtensor_2) -> ()
  }) : () -> ()
}) : () -> ()