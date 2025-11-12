"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch.aten.add.Tensor"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %0 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %1 = "torch.constant.float"() <{value = 2.0e+00 : f64}> : () -> !torch_float
      %2 = "torch.constant.str"() <{value = "example"}> : () -> !torch_str
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_bool, !torch_float, !torch_str) -> !torch_list
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      "func.return"(%4) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()