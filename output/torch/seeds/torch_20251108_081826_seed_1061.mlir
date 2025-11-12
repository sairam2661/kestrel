"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_5xi8, !torch_vtensor_5xi8) -> !torch_vtensor_5xi8, sym_name = "custom_mlir_fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensor_5xi8, %arg1: !torch_vtensor_5xi8):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
      %3 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_5xi8, !torch_vtensor_5xi8) -> !torch_vtensor_5xi8
      %4 = "torch.aten.mul"(%3, %0) : (!torch_vtensor_5xi8, !torch_int) -> !torch_vtensor_5xi8
      %5 = "torch.aten.sub"(%4, %1) : (!torch_vtensor_5xi8, !torch_int) -> !torch_vtensor_5xi8
      %6 = "torch.aten.div"(%5, %2) : (!torch_vtensor_5xi8, !torch_float) -> !torch_vtensor_5xi8
      "func.return"(%6) : (!torch_vtensor_5xi8) -> ()
  }) : () -> ()
}) : () -> ()