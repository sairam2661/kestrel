"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch_aten_vtensorliteral"}> ({
  ^bb0(%arg0: !torch_vtensorliteral):
    %0 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %1) : (!torch_vtensorliteral, !torch_int, !torch_int, !torch_int) -> !torch_vtensorliteral
    %3 = "torch.constant.float"() <{value = 2.5 : f64}> : () -> !torch_float
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %5 = "torch.aten.add.Tensor"(%2, %3, %4) : (!torch_vtensorliteral, !torch_float, !torch_int) -> !torch_vtensorliteral
    %6 = "torch.constant.str"() <{value = "example"}> : () -> !torch_str
    %7 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %8 = "torch.constant.none"() : () -> !torch_none
    %9 = "torch.aten.eq.Tensor"(%5, %arg0) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_bool
    "func.return"(%9) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()