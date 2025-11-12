"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_t, !torch_vtensor_t) -> (!torch_vtensor_t, !torch_vtensor_t), sym_name = "strange_combination"}> ({
    ^bb0(%arg0: !torch_vtensor_t, %arg1: !torch_vtensor_t):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %3 = "torch.constant.float"() <{value = 2.5 : f32}> : () -> !torch_float
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor_t, !torch_vtensor_t, !torch_int) -> !torch_vtensor_t
      %5 = "torch.aten.mul.Tensor"(%arg0, %3, %0) : (!torch_vtensor_t, !torch_float, !torch_int) -> !torch_vtensor_t
      %6 = "torch.aten.div.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor_t, !torch_vtensor_t, !torch_int) -> !torch_vtensor_t
      "func.return"(%5, %6) : (!torch_vtensor_t, !torch_vtensor_t) -> ()
  }) : () -> ()
}) : () -> ()