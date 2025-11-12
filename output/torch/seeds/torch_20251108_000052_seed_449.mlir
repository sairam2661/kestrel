"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_manipulation_complex"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> i64
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.aten.slice.Tensor"(%arg1, %2, %2, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, i64, !torch_int) -> !torch_vtensor
      %4 = "torch.aten.add.Tensor"(%arg0, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()