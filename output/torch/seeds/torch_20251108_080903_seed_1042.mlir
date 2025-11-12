"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int) -> (i1, !torch_vtensor_literal), sym_name = "torch_fuzz_test"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int):
    %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_constant_int) -> i1
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.aten.add.Tensor"(%arg0, %arg0, %1) : (!torch_vtensor_literal, !torch_vtensor_literal, !torch_bool) -> !torch_vtensor_literal
    "func.return"(%0, %2) : (i1, !torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()