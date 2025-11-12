"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor_case0, !torchvtensor_case1) -> !torchvtensor_case2, sym_name = "torch.aten.matmul$vector"}> ({
    ^bb0(%arg0: !torchvtensor_case0, %arg1: !torchvtensor_case1):
      %0 = "torch.aten.matmul"(%arg0, %arg1) : (!torchvtensor_case0, !torchvtensor_case1) -> !torchvtensor_case2
      "func.return"(%0) : (!torchvtensor_case2) -> ()
  }) : () -> ()
}) : () -> ()