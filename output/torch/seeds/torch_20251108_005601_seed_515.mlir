"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_complex_type) -> !torch_vtensor_type, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_complex_type):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_type, !torch_complex_type) -> !torch_vtensor_type
    %1 = "torch.aten.mul"(%arg0, %arg1) : (!torch_vtensor_type, !torch_complex_type) -> !torch_vtensor_type
    %2 = "torch.aten.sub"(%arg0, %arg1) : (!torch_vtensor_type, !torch_complex_type) -> !torch_vtensor_type
    %3 = "torch.aten.div"(%arg0, %arg1) : (!torch_vtensor_type, !torch_complex_type) -> !torch_vtensor_type
    "func.return"(%3) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()