"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_LITERAL, !torch_constant_BOOL) -> !torch_vtensor_LITERAL, sym_name = "torch.aten.where.dim"}> ({
    ^bb0(%arg0: !torch_vtensor_LITERAL, %arg1: !torch_constant_BOOL):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_constant_INT
      %1 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_LITERAL, !torch_constant_INT) -> !torch_constant_INT
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_constant_INT
      %3 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_constant_INT
      %4 = "torch.aten.cat"(%arg0, %2) : (!torch_vtensor_LITERAL, !torch_constant_INT) -> !torch_vtensor_LITERAL
      %5 = "torch.aten.cat"(%arg0, %3) : (!torch_vtensor_LITERAL, !torch_constant_INT) -> !torch_vtensor_LITERAL
      %6 = "torch.aten.index_select"(%4, %0, %1) : (!torch_vtensor_LITERAL, !torch_constant_INT, !torch_constant_INT) -> !torch_vtensor_LITERAL
      %7 = "torch.aten.index_select"(%5, %0, %0) : (!torch_vtensor_LITERAL, !torch_constant_INT, !torch_constant_INT) -> !torch_vtensor_LITERAL
      %8 = "torch.aten.index_select"(%6, %0, %2) : (!torch_vtensor_LITERAL, !torch_constant_INT, !torch_constant_INT) -> !torch_vtensor_LITERAL
      %9 = "torch.aten.where.dim"(%arg1, %8, %7, %0) : (!torch_constant_BOOL, !torch_vtensor_LITERAL, !torch_vtensor_LITERAL, !torch_constant_INT) -> !torch_vtensor_LITERAL
      "func.return"(%9) : (!torch_vtensor_LITERAL) -> ()
  }) : () -> ()
}) : () -> ()