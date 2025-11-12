"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensorType_1xsi64, !torch_vtensor_tensorType_2xi64) -> !torch_vtensor_tensorType_1xi64, sym_name = "torch.aten.add.Tensor_scalar"}> ({
    ^bb0(%arg0: !torch_vtensor_tensorType_1xsi64, %arg1: !torch_vtensor_tensorType_2xi64):
      %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor_tensorType_1xsi64, !torch_vtensor_tensorType_2xi64, !torch_int) -> !torch_vtensor_tensorType_1xi64
      "func.return"(%1) : (!torch_vtensor_tensorType_1xi64) -> ()
  }) : () -> ()
}) : () -> ()