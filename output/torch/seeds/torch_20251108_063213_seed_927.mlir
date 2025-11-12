"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "torch_aten_add_tensor_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal, %arg2: !torch_vtensor_literal, %arg3: !torch_vtensor_literal, %arg4: !torch_vtensor_literal, %arg5: !torch_vtensor_literal):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %1 = "torch.aten.add.Tensor"(%0, %arg2) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %2 = "torch.aten.add.Tensor"(%1, %arg3) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %3 = "torch.aten.add.Tensor"(%2, %arg4) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      %4 = "torch.aten.add.Tensor"(%3, %arg5) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%4) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()