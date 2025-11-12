"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %3 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %4 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.mul"(%4, %2) : (!torch_vtensor, !torch_float) -> !torch_vtensor
      %6 = "torch.aten.pow.Tensor_Scalar"(%5, %2) : (!torch_vtensor, !torch_float) -> !torch_vtensor
      %7 = "torch.aten.relu"(%6) : (!torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.dropout"(%7, %2, %0) : (!torch_vtensor, !torch_float, !torch_bool) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()