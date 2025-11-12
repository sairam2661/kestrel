"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensor, !torch_vtensor_tensor) -> !torch_vtensor_tensor, sym_name = "edge_case_function"}> ({
    ^bb0(%arg0: !torch_vtensor_tensor, %arg1: !torch_vtensor_tensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_tensor, !torch_vtensor_tensor) -> !torch_vtensor_tensor
      %1 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torch_vtensor_tensor, !torch_vtensor_tensor) -> !torch_vtensor_tensor
      %2 = "torch.aten.sub.Tensor"(%0, %1) : (!torch_vtensor_tensor, !torch_vtensor_tensor) -> !torch_vtensor_tensor
      %3 = "torch.aten.div.Tensor"(%2, %1) : (!torch_vtensor_tensor, !torch_vtensor_tensor) -> !torch_vtensor_tensor
      "func.return"(%3) : (!torch_vtensor_tensor) -> ()
  }) : () -> ()
}) : () -> ()