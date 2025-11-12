"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "fuzz_unusual_combinations"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    %1 = "torch.aten.mul.Tensor"(%0, %arg0) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    %2 = "torch.aten.sub.Tensor"(%1, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    %3 = "torch.aten.div.Tensor"(%2, %arg0) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    "func.return"(%3) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()