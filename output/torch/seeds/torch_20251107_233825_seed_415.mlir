"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor1d, !torch_vtensor2d) -> !torch_vtensor1d, sym_name = "torch_complex_example"}> ({
    ^bb0(%arg0: !torch_vtensor1d, %arg1: !torch_vtensor2d):
      %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
      %3 = "torch.prim.ListConstruct"(%0, %1, %0) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %4 = "torch.aten.slice.Tensor"(%arg1, %1, %0, %0) : (!torch_vtensor2d, !torch_int, !torch_int, !torch_int) -> !torch_vtensor1d
      %5 = "torch.aten.add.Tensor"(%arg0, %4) : (!torch_vtensor1d, !torch_vtensor1d) -> !torch_vtensor1d
      "func.return"(%5) : (!torch_vtensor1d) -> ()
  }) : () -> ()
}) : () -> ()