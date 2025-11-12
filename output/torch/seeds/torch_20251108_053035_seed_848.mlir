"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "fuzz_function"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensorliteral, !torch_int) -> !torch_int
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_int) -> !torch_vtensorliteral
      %4 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %5 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %6 = "torch._shape_as_tensor"(%arg0) : (!torch_vtensorliteral) -> !torch_vtensorliteral
      "func.return"(%6) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()