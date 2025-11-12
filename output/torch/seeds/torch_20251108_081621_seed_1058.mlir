"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch_aten_cat_and_add"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list_int
    %2 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_list_int) -> !torch_vtensor_literal
    %3 = "torch.constant.float"() <{value = 2.000000e+00 : f32}> : () -> !torch_float
    %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor_literal, !torch_float) -> !torch_vtensor_literal
    "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()