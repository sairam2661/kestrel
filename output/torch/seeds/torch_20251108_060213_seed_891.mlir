"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "index_select_sparse_tensor"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant_int
      %1 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
      "func.return"(%1) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()