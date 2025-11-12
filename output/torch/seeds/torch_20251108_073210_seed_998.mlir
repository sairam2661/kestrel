"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "complex_torch_ops"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor_3
      %1 = "torch.constant.float"() <{value = 3.5 : f32}> : () -> !torch_vtensor_4
      %2 = "torch.aten.add.Tensor"(%arg0, %1) : (!torch_vtensor_0, !torch_vtensor_4) -> !torch_vtensor_0
      %3 = "torch.aten.mul.Tensor"(%2, %0) : (!torch_vtensor_0, !torch_vtensor_3) -> !torch_vtensor_0
      %4 = "torch.aten.div.Tensor"(%3, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_0
      "func.return"(%4) : (!torch_vtensor_0) -> ()
  }) : () -> ()
}) : () -> ()