"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_0, !torch_vtensor_literal_1, !torch_constant_int_0, !torch_constant_int_1, !torch_constant_int_2, !torch_constant_int_3) -> !torch_vtensor_literal_2, sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensor_literal_0, %arg1: !torch_vtensor_literal_1, %arg2: !torch_constant_int_0, %arg3: !torch_constant_int_1, %arg4: !torch_constant_int_2, %arg5: !torch_constant_int_3):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal_0, !torch_vtensor_literal_1) -> !torch_vtensor_literal_2
      %1 = "torch.aten.slice.Tensor"(%0, %arg2, %arg3, %arg4) : (!torch_vtensor_literal_2, !torch_constant_int_0, !torch_constant_int_1, !torch_constant_int_2) -> !torch_vtensor_literal_2
      %2 = "torch.aten.eq.Tensor"(%1, %arg5) : (!torch_vtensor_literal_2, !torch_constant_int_3) -> !torch_vtensor_literal_2
      %3 = "torch.aten.view"(%2, %arg2) : (!torch_vtensor_literal_2, !torch_constant_int_0) -> !torch_vtensor_literal_2
      "func.return"(%3) : (!torch_vtensor_literal_2) -> ()
  }) : () -> ()
}) : () -> ()