"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.view"(%arg0, %0, %1) : (!torch_vtensor_literal, !torch_int, !torch_int) -> !torch_vtensor_literal
      %3 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %1) : (!torch_vtensor_literal, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_literal
      %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()