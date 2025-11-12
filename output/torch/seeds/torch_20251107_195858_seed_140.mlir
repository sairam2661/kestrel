"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.aten.slice.Tensor"(%arg0, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %3 = "torch.constant.float"() <{value = 42.0 : f32}> : () -> !torch_float
      %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torch_float) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%2, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.constant.str"() <{value = "foo"}> : () -> !torch_str
      %7 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %8 = "torch.constant.none"() <{value = none}> : () -> !torch_none
      %9 = "torch.aten._make_per_tensor_quantized_tensor"(%5, %6, %7, %8) : (!torch_vtensor, !torch_str, !torch_bool, !torch_none) -> !torch_vtensor
      %10 = "torch.aten.item"(%9) : (!torch_vtensor) -> !torch_int
      %11 = "torch.aten.eq.Tensor"(%arg1, %10) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %12 = "torch.aten.index_select"(%arg1, %0, %11) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      %13 = "torch.aten.view"(%12, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%13) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()