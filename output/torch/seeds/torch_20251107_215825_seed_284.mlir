"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_constantbool, !torch_constantfloat) -> !torch_vtensorliteral, sym_name = "unusual_combination"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_constantbool, %arg2: !torch_constantfloat):
      %0 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %1 = "torch.aten.add.Tensor"(%0, %arg2) : (!torch_vtensorliteral, !torch_constantfloat) -> !torch_vtensorliteral
      %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_vtensorliteral) -> !torch_vtensorliteral
      %3 = "torch.constant.float"() <{value = 10.0 : f32}> : () -> !torch_constantfloat
      %4 = "torch.aten.add.Tensor"(%1, %3) : (!torch_vtensorliteral, !torch_constantfloat) -> !torch_vtensorliteral
      "func.return"(%4) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()