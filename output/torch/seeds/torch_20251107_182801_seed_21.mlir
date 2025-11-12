"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type, !torch_int) -> !torch_vtensor_type, sym_name = "torch.aten.addcmul$alpha"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type, %arg2: !torch_int):
      %0 = "torch.constant.float"() <{value = 1.5 : f32}> : () -> !torch_float
      %1 = "torch_aten.addcmul.Scalar"(%arg0, %arg1, %arg2, %0) : (!torch_vtensor_type, !torch_vtensor_type, !torch_int, !torch_float) -> !torch_vtensor_type
      "func.return"(%1) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()