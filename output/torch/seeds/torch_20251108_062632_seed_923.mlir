"builtin.module"() ({
  "func.func"() <{function_type = (!torchinta, !torchinta) -> !torchinta, sym_name = "torch_add_tensor_int"}> ({
    ^bb0(%arg0: !torchinta, %arg1: !torchinta):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchinta
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torchinta, !torchinta, !torchinta) -> !torchinta
      "func.return"(%1) : (!torchinta) -> ()
  }) : () -> ()
}) : () -> ()