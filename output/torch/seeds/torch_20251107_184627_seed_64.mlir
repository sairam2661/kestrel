"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_constantbool, !torch_constantnone) -> !torch_constantnone, sym_name = "complex_func"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_constantbool, %arg2: !torch_constantnone):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensorliteral
      %2 = "torch.aten.size.int"(%1) : (!torch_vtensorliteral) -> !torch_int
      %3 = "torch.aten.item"(%2) : (!torch_int) -> i64
      %4 = "torch.constant.str"() <{value = "fuzzing"}> : () -> !torch_str
      "func.return"(%arg2) : (!torch_constantnone) -> ()
  }) : () -> ()
}) : () -> ()