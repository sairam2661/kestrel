"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32, sym_name = "elementwise_addition"}> ({
    ^bb0(%arg0: !torch_vtensor_i32, %arg1: !torch_vtensor_i32):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32
      %2 = "torch.aten.mul"(%1, %0) : (!torch_vtensor_i32, !torch_int) -> !torch_vtensor_i32
      %3 = "torch.aten.sub"(%2, %arg0) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32
      "func.return"(%3) : (!torch_vtensor_i32) -> ()
  }) : () -> ()
}) : () -> ()