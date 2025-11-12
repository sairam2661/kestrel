"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantint, !torchconstantint) -> !torchconstantint, sym_name = "custom_add"}> ({
    ^bb0(%arg0: !torchconstantint, %arg1: !torchconstantint):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchconstantint, !torchconstantint) -> !torchconstantint
      "func.return"(%0) : (!torchconstantint) -> ()
  }) : () -> ()
}) : () -> ()