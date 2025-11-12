"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor1d, !torch_vtensor2d) -> (!torch_vtensor2d, !torch_vtensor1d), sym_name = "test_complex_operations"}> ({
    ^bb0(%arg0: !torch_vtensor1d, %arg1: !torch_vtensor2d):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %3 = "torch.aten.unfold"(%arg1, %0, %0, %2) : (!torch_vtensor2d, !torch_int, !torch_int, !torch_list_int) -> !torch_vtensor3d
      %4 = "torch.aten.mean"(%3, %0, %1) : (!torch_vtensor3d, !torch_int, !torch_int) -> !torch_vtensor2d
      %5 = "torch.aten.mul"(%arg0, %4) : (!torch_vtensor1d, !torch_vtensor2d) -> !torch_vtensor2d
      "func.return"(%5, %arg0) : (!torch_vtensor2d, !torch_vtensor1d) -> ()
  }) : () -> ()
}) : () -> ()