"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_op_sequence$test"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list_int
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.constant.none"() : () -> !torch_none
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.mul.Tensor"(%4, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.mean.dim"(%5, %1, %2, %3) : (!torch_vtensor, !torch_list_int, !torch_bool, !torch_none) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()