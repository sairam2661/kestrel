"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_int, !torch_int) -> (!torch_vtensorliteral, !torch_bool), sym_name = "dynamic_shape_index_select"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_int, %arg2: !torch_int):
      %0 = "torch.constant.str"() <{value = "dim"}> : () -> !torch_str
      %1 = "torch.prim.ListConstruct"(%arg1, %arg2) : (!torch_int, !torch_int) -> !torch_list
      %2 = "torch.aten.index_select"(%arg0, %0, %1) : (!torch_vtensorliteral, !torch_str, !torch_list) -> !torch_vtensorliteral
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      "func.return"(%2, %3) : (!torch_vtensorliteral, !torch_bool) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()