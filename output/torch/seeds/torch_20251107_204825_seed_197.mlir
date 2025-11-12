"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32, sym_name = "tensor_arithmetic"}> ({
    ^bb0(%arg0: !torch_vtensor_i32, %arg1: !torch_vtensor_i32):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32
      %1 = "torch.constant.int"() <{value = 42 : i32}> : () -> !torch_vtensor_i32
      %2 = "torch.aten.mul.Tensor"(%0, %1) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32
      %3 = "torch.aten.sub.Tensor"(%2, %arg0) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32
      "func.return"(%3) : (!torch_vtensor_i32) -> ()
  }) : () -> ()
}) : () -> ()