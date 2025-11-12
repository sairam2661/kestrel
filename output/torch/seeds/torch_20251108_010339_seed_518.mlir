"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "complex_slice_and_cat"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
    %c0 = "torch.constant.none"() : () -> !torch_none
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %c4 = "torch.constant.float"() <{value = 0.500000e+00 : f64}> : () -> !torch_float
    %0 = "torch.aten.slice.Tensor"(%arg0, %c1, %c2, %c3) : (!torch_vtensorliteral, !torch_int, !torch_int, !torch_int) -> !torch_vtensorliteral
    %1 = "torch.aten.slice.Tensor"(%arg1, %c1, %c0, %c3) : (!torch_vtensorliteral, !torch_int, !torch_none, !torch_int) -> !torch_vtensorliteral
    %2 = "torch.aten.cat"(%0, %1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    "func.return"(%2) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()