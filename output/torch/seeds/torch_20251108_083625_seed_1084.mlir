"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "dynamic_slice_and_cat"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int, %arg2: !torch_constant_int):
    %0 = "torch.aten.slice.Tensor"(%arg0, %arg1, %arg2) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
    %1 = "torch.aten.size.int"(%0, %arg1) : (!torch_vtensor_literal, !torch_constant_int) -> !torch_constant_int
    %2 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_constant_int
    %3 = "torch.aten.add.Tensor"(%1, %2) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %4 = "torch.aten.slice.Tensor"(%arg0, %arg1, %arg2, %3) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
    %5 = "torch.aten.cat"(%0, %4) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    "func.return"(%5) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()