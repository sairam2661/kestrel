"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchvtensorliteral, !torchvtensorliteral) -> (!torchvtensorliteral, !torchvtensorliteral), sym_name = "custom_tensor_op"}> ({
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %1 = "torch.constant.none"() : () -> !torchnone
    %2 = "torch.vtensor.literal"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> !torchvtensorliteral
    %3 = "torch.vtensor.literal"() <{value = dense<[[5, 6], [7, 8]]> : tensor<2x2xi32>}> : () -> !torchvtensorliteral
    %4 = "torch.aten.add.Tensor"(%2, %3) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
    %5 = "torch.aten.eq.Tensor"(%2, %3) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
    %6 = "torch.constant.str"() <{value = "tensor comparison"}> : () -> !torchstr
    "func.return"(%4, %5) : (!torchvtensorliteral, !torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()