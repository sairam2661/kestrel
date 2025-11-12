"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_3, sym_name = "torch.aten.matmul_transpose"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1, %arg2: !torch_vtensor_2):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.aten.transpose"(%arg1, %0, %1) : (!torch_vtensor_1, !torch_int, !torch_bool) -> !torch_vtensor_1
      %4 = "torch.aten.matmul"(%arg0, %3) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_3
      %5 = "torch.aten.matmul"(%4, %arg2) : (!torch_vtensor_3, !torch_vtensor_2) -> !torch_vtensor_4
      "func.return"(%5) : (!torch_vtensor_4) -> ()
  }) : () -> ()
}) : () -> ()