"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_op_sequence"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %2 = "torch.aten.cat"(%1, %0) : (!torch_list, !torch_int) -> !torch_vtensor
      %3 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %4 = "torch.aten.mul.Scalar"(%2, %3) : (!torch_vtensor, !torch_float) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()