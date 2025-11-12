"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_int) -> !torch_vtensor, sym_name = "torch.aten.index_select"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_int):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
      %3 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %4 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %1, %1) : (!torch_vtensorliteral, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.index_select"(%arg0, %1, %4) : (!torch_vtensorliteral, !torch_int, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()