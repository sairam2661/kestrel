"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fft"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.constant.none"() : () -> !torch_none
      %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
      %5 = "torch.aten.fft.ifft"(%arg0, %4, %2, %3) : (!torch_vtensor, !torch_list, !torch_bool, !torch_none) -> !torch_vtensor
      %6 = "torch.aten.fft.ifft"(%arg1, %4, %2, %3) : (!torch_vtensor, !torch_list, !torch_bool, !torch_none) -> !torch_vtensor
      %7 = "torch.aten.add"(%5, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()