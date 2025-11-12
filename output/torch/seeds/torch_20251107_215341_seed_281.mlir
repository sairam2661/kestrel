"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_tensor_4xi32, !torch_constantint_i64) -> !torch_vtensorliteral_tensor_4xi32, sym_name = "tensor_slice_and_add"}> ({
  ^bb0(%arg0: !torch_vtensorliteral_tensor_4xi32, %arg1: !torch_constantint_i64):
    %0 = "torch.aten.slice.Tensor"(%arg0, %arg1, %arg1, %arg1) : (!torch_vtensorliteral_tensor_4xi32, !torch_constantint_i64, !torch_constantint_i64, !torch_constantint_i64) -> !torch_vtensorliteral_tensor_4xi32
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_constantint_i64
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensorliteral_tensor_4xi32, !torch_constantint_i64) -> !torch_vtensorliteral_tensor_4xi32
    "func.return"(%2) : (!torch_vtensorliteral_tensor_4xi32) -> ()
  }) : () -> ()
}) : () -> ()