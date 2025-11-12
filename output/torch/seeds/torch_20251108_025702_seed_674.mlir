"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtestensor, !torchvtestensor) -> !torchvtestensor, sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: !torchvtestensor, %arg1: !torchvtestensor):
      %c0_i32 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torchvtestensor
      %c1_i32 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torchvtestensor
      %c2_i32 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torchvtestensor
      %slice0 = "torch.aten.slice.Tensor"(%arg0, %c0_i32, %c0_i32, %c1_i32) : (!torchvtestensor, !torchvtestensor, !torchvtestensor, !torchvtestensor) -> !torchvtestensor
      %slice1 = "torch.aten.slice.Tensor"(%arg1, %c0_i32, %c0_i32, %c1_i32) : (!torchvtestensor, !torchvtestensor, !torchvtestensor, !torchvtestensor) -> !torchvtestensor
      %add = "torch.aten.add.Tensor"(%slice0, %slice1) : (!torchvtestensor, !torchvtestensor) -> !torchvtestensor
      "func.return"(%add) : (!torchvtestensor) -> ()
  }) : () -> ()
}) : () -> ()