"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "unusual_sequence"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %1 = "torch.aten.mul"(%0, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %2 = "torch.aten.sub"(%1, %arg0) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %3 = "torch.aten.div"(%2, %arg1) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      "func.return"(%3) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()