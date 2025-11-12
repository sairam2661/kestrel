"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_t, !torch_vtensor_t, !torch_int) -> !torch_vtensor_t, sym_name = "complex_tensor_operation"}> ({
    ^bb0(%arg0: !torch_vtensor_t, %arg1: !torch_vtensor_t, %arg2: !torch_int):
      %cst = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_t, !torch_vtensor_t) -> !torch_vtensor_t
      %1 = "torch.aten.mul.Tensor"(%0, %cst) : (!torch_vtensor_t, !torch_float) -> !torch_vtensor_t
      %2 = "torch.aten.pow.Tensor"(%1, %arg2) : (!torch_vtensor_t, !torch_int) -> !torch_vtensor_t
      "func.return"(%2) : (!torch_vtensor_t) -> ()
  }) : () -> ()
}) : () -> ()