"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_list, !torch_int) -> !torch_float, sym_name = "complex_nested_tensors"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_list, %arg2: !torch_int):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %3 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
      %4 = "torch.prim.ListConstruct"(%3, %1, %arg2) : (!torch_int, !torch_int, !torch_int) -> !torch_list
      %5 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.cat"(%arg1) : (!torch_list) -> !torch_vtensor
      %7 = "torch.aten.view"(%6, %4) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %8 = "torch.aten.eq.Tensor"(%5, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %9 = "torch.aten.item"(%8) : (!torch_bool) -> !torch_int
      %10 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
      %11 = "torch.constant.none"() : () -> !torch_none
      %12 = "torch.aten._make_per_tensor_quantized_tensor"(%7, %9, %10, %11) : (!torch_vtensor, !torch_int, !torch_str, !torch_none) -> !torch_vtensor
      "func.return"(%12) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()