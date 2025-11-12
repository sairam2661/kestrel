"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "custom_div_and_mul"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %0 = "torch.aten.div.Tensor"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.mul.Tensor"(%0, %1) : (!torch_vtensor_type, !torch_int) -> !torch_vtensor_type
      "func.return"(%2) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()