"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_3, sym_name = "torch_fuzz_example"}> ({
  ^bb0(%arg0: !torch_vtensor_1, %arg1: !torch_vtensor_2):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_1, !torch_vtensor_2) -> !torch_vtensor_3
    %1 = "torch.aten.sin"(%0) : (!torch_vtensor_3) -> !torch_vtensor_3
    %2 = "torch.aten.exp"(%1) : (!torch_vtensor_3) -> !torch_vtensor_3
    %3 = "torch.aten.relu"(%2) : (!torch_vtensor_3) -> !torch_vtensor_3
    "func.return"(%3) : (!torch_vtensor_3) -> ()
  }) : () -> ()
}) : () -> ()