"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "quantized_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_int
      %1 = "torch.constant.str"() <{value = "scale"}> : () -> !torch_string
      %2 = "torch.constant.str"() <{value = "zero_point"}> : () -> !torch_string
      %3 = "torch.constant.float"() <{value = 0.500000e+00 : f64}> : () -> !torch_float
      %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %5 = "torch.prim.ListConstruct"(%1, %2) : (!torch_string, !torch_string) -> !torch_list
      %6 = "torch.prim.ListConstruct"(%3, %4) : (!torch_float, !torch_int) -> !torch_list
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %5, %6, %0) : (!torch_vtensor, !torch_list, !torch_list, !torch_int) -> !torch_vtensor
      %8 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %9 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %10 = "torch.prim.ListConstruct"(%8, %9) : (!torch_int, !torch_int) -> !torch_list
      %11 = "torch.aten.slice.Tensor"(%arg1, %8, %9, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %12 = "torch.aten.index_select"(%7, %8, %11) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      "func.return"(%12) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()