"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "cross_dialect_unusual_flow"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal, %arg2: !torch_vtensor_literal):
      %0 = "torch.aten.cat"(%arg0, %arg1, %arg2) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %1 = "torch.aten.size.int"(%0, 0) : (!torch_vtensor_literal, i64) -> i64
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "arith.addi"(%1, %2) : (i64, i64) -> i64
      %4 = "torch.aten.index_select"(%0, 0, %3) : (!torch_vtensor_literal, i64, !torch_int) -> !torch_vtensor_literal
      "func.return"(%4) : (!torch_vtensor_literal) -> ()
    }) : () -> ()
}) : () -> ()