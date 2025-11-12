"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_float, !torch_constant_int) -> !torch_vtensor_literal, sym_name = "torch_fuzz_001"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_float, %arg2: !torch_constant_int):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_constant_float) -> !torch_vtensor_literal
    %1 = "torch.aten.view"(%0, %arg2) : (!torch_vtensor_literal, !torch_constant_int) -> !torch_vtensor_literal
    %2 = "torch.aten.index_select"(%1, %arg2, %arg2) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
    %3 = "torch.aten.slice.Tensor"(%2, %arg2, %arg2, %arg2) : (!torch_vtensor_literal, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_literal
    "func.return"(%3) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()