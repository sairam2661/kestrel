"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64, sym_name = "tensor_add_multiply"}> ({
    ^bb0(%arg0: !torch_vtensor_i64, %arg1: !torch_vtensor_i64):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.aten.add"(%arg0, %0) : (!torch_vtensor_i64, !torch_int) -> !torch_vtensor_i64
      %3 = "torch.aten.mul"(%2, %1) : (!torch_vtensor_i64, !torch_int) -> !torch_vtensor_i64
      "func.return"(%3) : (!torch_vtensor_i64) -> ()
  }) : () -> ()
}) : () -> ()