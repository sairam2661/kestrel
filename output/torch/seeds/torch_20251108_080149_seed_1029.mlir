"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "tensor_math_combinations"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %2 = "torch.aten.mul"(%1, %0) : (!torch_vtensor_literal, !torch_int) -> !torch_vtensor_literal
      %3 = "torch.aten.sub"(%2, %arg0) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %4 = "torch.aten.div"(%3, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()