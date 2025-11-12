"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "complex_fusion"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %0 = "torch.constant.float"() <{value = 1.5 : f32}> : () -> !torch_vtensor_type
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor_type
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %3 = "torch.aten.mul.Tensor"(%2, %0) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %4 = "torch.aten.sub.Tensor"(%3, %arg0) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %5 = "torch.aten.div.Tensor"(%4, %1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      "func.return"(%5) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()