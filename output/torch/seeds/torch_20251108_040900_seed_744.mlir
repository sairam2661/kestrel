"builtin.module"() ({
    "func.func"() <{function_type = (!torchvtensorliteral, !torchint) -> (!torchvtensorliteral), sym_name = "torch.matmul_and_index"}> ({
    ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchint):
        %0 = "torch.aten.matmul"(%arg0, %arg0) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
        %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
        %2 = "torch.vtensor.literal"() <{value = dense<1> : tensor<2xi64>}> : () -> !torchvtensorliteral
        %3 = "torch.aten.index_select"(%0, %1, %2) : (!torchvtensorliteral, !torchint, !torchvtensorliteral) -> !torchvtensorliteral
        "func.return"(%3) : (!torchvtensorliteral) -> ()
    }) : () -> ()
}) : () -> ()