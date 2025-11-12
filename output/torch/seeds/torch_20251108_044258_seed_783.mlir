"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_bool, sym_name = "tensor_eq_check"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_literal) -> !torch_vtensor
    %1 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor_literal) -> !torch_vtensor
    %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
    "func.return"(%2) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()