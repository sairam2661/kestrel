"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal, !torch_constant_int, !torch_constant_int, !torch_constant_bool) -> !torch_vtensor_literal, sym_name = "tensor_ops_combination"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal, %arg2: !torch_constant_int, %arg3: !torch_constant_int, %arg4: !torch_constant_bool):
    %0 = "torch_aten_add.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %1 = "torch_aten_view"(%0, %arg2, %arg3) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
    %2 = "torch_aten_eq.Tensor"(%1, %arg0) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %3 = "torch_aten_item"(%2) : (!torch_vtensor_literal) -> !torch_constant_int
    %4 = "torch_constant_float"() <{value = 3.14 : f64}> : () -> !torch_constant_float
    %5 = "torch_aten_add.Tensor"(%4, %3) : (!torch_constant_float, !torch_constant_int) -> !torch_constant_float
    "func.return"(%5) : (!torch_constant_float) -> ()
  }) : () -> ()
}) : () -> ()