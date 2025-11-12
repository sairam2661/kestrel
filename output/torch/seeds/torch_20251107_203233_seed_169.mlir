"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "torch.aten.view$complexShape"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
      %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %4 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch_int
      %5 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4) : (!torch_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
      %6 = "torch.aten.view"(%arg0, %5) : (!torch_vtensor_0, !torch_list_int) -> !torch_vtensor_2
      "func.return"(%6) : (!torch_vtensor_2) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()