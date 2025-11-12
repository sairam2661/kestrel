"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> (!torch_vtensor_literal, !torch_vtensor_literal), sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %5 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2, %3) : (!torch_vtensor_literal, !torch_int, !torch_int, !torch_int, !torch_bool) -> !torch_vtensor_literal
      %6 = "torch.aten.view"(%arg1, %4) : (!torch_vtensor_literal, !torch_list_int) -> !torch_vtensor_literal
      %7 = "torch.aten.add.Tensor"(%5, %6) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %8 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_bool
      %9 = "torch.aten.item"(%8) : (!torch_bool) -> !torch_int
      "func.return"(%7, %9) : (!torch_vtensor_literal, !torch_int) -> ()
  }) : () -> ()
}) : () -> ()