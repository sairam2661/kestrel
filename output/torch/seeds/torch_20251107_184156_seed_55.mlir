"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %4 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %5 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %6 = "torch.aten.slice.Tensor"(%arg0, %3, %4, %5, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %7 = "torch.aten.add.Tensor"(%arg1, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %8 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %9 = "torch.prim.ListConstruct"(%8) : (!torch_bool) -> !torch_list
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()