"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int, !torch_bool) -> !torch_vtensor, sym_name = "complex_index_select"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int, %arg2: !torch_bool):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_int, !torch_int) -> !torch_bool
      %5 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %6 = "torch.aten.slice.Tensor"(%arg0, %0, %3, %2, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %7 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_int) -> !torch_vtensor
      %8 = "torch.aten.item"(%7) : (!torch_vtensor) -> !torch_int
      %9 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %3, %3, %3, %0, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int, !torch_none) -> !torch_vtensor
      %10 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%5, %6, %9, %10) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()