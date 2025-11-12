"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_ops"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.mul"(%0, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %4 = "torch.aten.slice.Tensor"(%2, %3, %3, %1, %3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) {torch.assume_strict_symbolic_shapes} : () -> ()
}) : () -> ()