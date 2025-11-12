"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int, !torch_int) -> (!torch_vtensor, !torch_int), sym_name = "torch.index_select_with_dynamic_indices"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int, %arg2: !torch_int):
      %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.index_select"(%0, %arg1, %arg2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_int) -> !torch_vtensor
      %4 = "torch.aten.add.Tensor"(%1, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.constant.none"() : () -> !torch_none
      %6 = "torch.aten.view"(%4, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6, %2) : (!torch_vtensor, !torch_int) -> ()
  }) : () -> ()
}) : () -> ()