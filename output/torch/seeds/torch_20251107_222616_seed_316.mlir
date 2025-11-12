"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_tensor_4xsi8, !torch_vtensorliteral_tensor_3xui8, !torch_vtensorliteral_tensor_4xf32) -> (!torch_vtensorliteral_tensor_4xi1, !torch_vtensorliteral_tensor_3xi1, !torch_vtensorliteral_tensor_4xi1), sym_name = "torch_tensor_tensor_eq"}> ({
    ^bb0(%arg0: !torch_vtensorliteral_tensor_4xsi8, %arg1: !torch_vtensorliteral_tensor_3xui8, %arg2: !torch_vtensorliteral_tensor_4xf32):
      %cst0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %cst1 = "torch.constant.float"() <{value = 1.0 : f64}> : () -> !torch_float
      %eq_si8 = "torch.aten.eq.Scalar"(%arg0, %cst0) : (!torch_vtensorliteral_tensor_4xsi8, !torch_int) -> !torch_vtensorliteral_tensor_4xi1
      %eq_ui8 = "torch.aten.eq.Scalar"(%arg1, %cst0) : (!torch_vtensorliteral_tensor_3xui8, !torch_int) -> !torch_vtensorliteral_tensor_3xi1
      %eq_f32 = "torch.aten.eq.Scalar"(%arg2, %cst1) : (!torch_vtensorliteral_tensor_4xf32, !torch_float) -> !torch_vtensorliteral_tensor_4xi1
      "func.return"(%eq_si8, %eq_ui8, %eq_f32) : (!torch_vtensorliteral_tensor_4xi1, !torch_vtensorliteral_tensor_3xi1, !torch_vtensorliteral_tensor_4xi1) -> ()
  }) : () -> ()
}) : () -> ()