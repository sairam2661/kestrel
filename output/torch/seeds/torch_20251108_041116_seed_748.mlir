"builtin.module"() ({
  "func.func"() <{function_type = (!torchatenView, !torchatenAdd) -> !torchatenView, sym_name = "torch_fuzz_example"}> ({
    ^bb0(%arg0: !torchatenView, %arg1: !torchatenAdd):
      %0 = "torchatenView"(%arg0) : (!torchatenView) -> !torchatenView
      %1 = "torchatenAdd"(%arg1, %0) : (!torchatenAdd, !torchatenView) -> !torchatenAdd
      %2 = "torchatenView"(%1) : (!torchatenAdd) -> !torchatenView
      "func.return"(%2) : (!torchatenView) -> ()
  }) : () -> ()
}) : () -> ()