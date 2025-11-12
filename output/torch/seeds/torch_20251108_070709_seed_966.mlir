"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_opt_variadic, !torch_vtensor_opt_variadic) -> !torch_vtensor_opt_variadic, sym_name = "torch.aten.cat_mixed_types"}> ({
  ^bb0(%arg0: !torch_vtensor_opt_variadic, %arg1: !torch_vtensor_opt_variadic):
    %0 = "torch.aten.cat"(%arg0, %arg1, %c0_i32) : (!torch_vtensor_opt_variadic, !torch_vtensor_opt_variadic, !torch_int) -> !torch_vtensor_opt_variadic
    "func.return"(%0) : (!torch_vtensor_opt_variadic) -> ()
  }) : () -> ()
}) : () -> ()