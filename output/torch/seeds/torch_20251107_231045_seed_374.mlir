"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_dynamic, !torch_vtensor_dynamic) -> !torch_vtensor_dynamic, sym_name = "dynamic_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_dynamic, %arg1: !torch_vtensor_dynamic):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_dynamic, !torch_vtensor_dynamic) -> !torch_vtensor_dynamic
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.aten.mul.Tensor"(%0, %1) : (!torch_vtensor_dynamic, !torch_int) -> !torch_vtensor_dynamic
    %3 = "torch.aten.relu"(%2) : (!torch_vtensor_dynamic) -> !torch_vtensor_dynamic
    "func.return"(%3) : (!torch_vtensor_dynamic) -> ()
  }) : () -> ()
}) : () -> ()