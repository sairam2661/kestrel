"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_int64, !torch_vtensor_float32) -> (!torch_vtensor_int64, !torch_vtensor_float32), sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_int64, %arg1: !torch_vtensor_float32):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %2 = "torch.aten.add.Tensor"(%arg0, %0) : (!torch_vtensor_int64, !torch_int) -> !torch_vtensor_int64
      %3 = "torch.aten.mul.Tensor"(%arg1, %1) : (!torch_vtensor_float32, !torch_float) -> !torch_vtensor_float32
      %4 = "torch.aten.div.Tensor"(%3, %1) : (!torch_vtensor_float32, !torch_float) -> !torch_vtensor_float32
      %5 = "torch.aten.pow.Tensor"(%2, %0) : (!torch_vtensor_int64, !torch_int) -> !torch_vtensor_int64
      "func.return"(%5, %4) : (!torch_vtensor_int64, !torch_vtensor_float32) -> ()
  }) : () -> ()
}) : () -> ()