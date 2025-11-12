"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (i64, !torch_vtensor), sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> i64
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (i64) -> !torch_vtensor
      %4 = "torch.aten.index_select"(%arg0, %0, %3) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.slice.Tensor"(%arg1, %0, %2, %2, %0) : (!torch_vtensor, !torch_int, i64, i64, !torch_int) -> !torch_vtensor
      %6 = "torch.aten.size.int"(%4, %0) : (!torch_vtensor, !torch_int) -> i64
      "func.return"(%6, %5) : (i64, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()