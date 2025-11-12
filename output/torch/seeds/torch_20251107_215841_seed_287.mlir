"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_convolution"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
      %3 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
      %4 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
      %5 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
      %6 = "torch.aten.convolution"(%arg0, %arg1, %arg2, %2, %3, %4, %1, %5, %0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_int) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()