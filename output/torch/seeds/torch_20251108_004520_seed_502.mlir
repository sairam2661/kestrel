"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_conv"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.mul"(%0, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %3 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
      %4 = "torch.aten.div"(%2, %3) : (!torch_vtensor, !torch_float) -> !torch_vtensor
      %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %6 = "torch.aten.max"(%4, %5) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %7 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %8 = "torch.aten.min"(%6, %7) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()