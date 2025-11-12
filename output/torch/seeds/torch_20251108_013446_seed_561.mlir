"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "torch.custom_op"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2
      %1 = "torch.aten.sub"(%0, %arg0) : (!torch_vtensor_2, !torch_vtensor_0) -> !torch_vtensor_2
      %2 = "torch.aten.mul"(%1, %arg1) : (!torch_vtensor_2, !torch_vtensor_1) -> !torch_vtensor_2
      %3 = "torch.aten.div"(%2, %arg0) : (!torch_vtensor_2, !torch_vtensor_0) -> !torch_vtensor_2
      "func.return"(%3) : (!torch_vtensor_2) -> ()
  }) : () -> ()
}) : () -> ()