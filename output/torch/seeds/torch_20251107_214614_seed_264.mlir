"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1, !torch_vtensor_2, !torch_vtensor_3, !torch_vtensor_4) -> (!torch_vtensor_0, !torch_vtensor_1, !torch_vtensor_2, !torch_vtensor_3, !torch_vtensor_4), sym_name = "complex_interactions"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1, %arg2: !torch_vtensor_2, %arg3: !torch_vtensor_3, %arg4: !torch_vtensor_4):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_0
    %1 = "torch.aten.mul"(%arg2, %arg3) : (!torch_vtensor_2, !torch_vtensor_3) -> !torch_vtensor_2
    %2 = "torch.aten.sub"(%arg4, %0) : (!torch_vtensor_4, !torch_vtensor_0) -> !torch_vtensor_4
    %3 = "torch.aten.div"(%1, %2) : (!torch_vtensor_2, !torch_vtensor_4) -> !torch_vtensor_2
    %4 = "torch.aten.tanh"(%3) : (!torch_vtensor_2) -> !torch_vtensor_2
    "func.return"(%arg0, %arg1, %4, %arg3, %arg4) : (!torch_vtensor_0, !torch_vtensor_1, !torch_vtensor_2, !torch_vtensor_3, !torch_vtensor_4) -> ()
  }) : () -> ()
}) : () -> ()