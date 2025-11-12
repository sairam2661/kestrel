"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_slice_and_index"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c5_i64 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %slice = "torch.aten.slice.Tensor"(%arg0, %c0_i64, %c1_i64, %c5_i64, %c2_i64) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %index_select = "torch.aten.index_select"(%slice, %c0_i64, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      "func.return"(%index_select) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()