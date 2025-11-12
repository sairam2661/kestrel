"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvectorliteral, !torchint, !torchint, !torchint) -> !torchint, sym_name = "complex_fuzz_function"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> !torchvvectorliteral
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
    %4 = "torch.aten.slice.Tensor"(%0, %1, %2, %3, %2) : (!torchvvectorliteral, !torchint, !torchint, !torchint, !torchint) -> !torchint
    "func.return"(%4) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()