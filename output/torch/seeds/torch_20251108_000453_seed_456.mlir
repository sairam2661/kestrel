"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.cat$basic"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_tensor
      %2 = "torch.prim.ListConstruct"(%1) : (!torch_tensor) -> !torch_list
      %3 = "torch.aten.cat"(%arg0, %arg1, %2) : (!torch_vtensor, !torch_vtensor, !torch_list) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()