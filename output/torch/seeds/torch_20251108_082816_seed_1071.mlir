"builtin.module"() ({
    "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_concat_unusual_case"}> ({
        ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
            %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
            %1 = "torch.vtensor.literal"() <{value = dense<10> : tensor<2xsi32>}> : () -> !torch_vtensor
            %2 = "torch.vtensor.literal"() <{value = dense<20> : tensor<3xsi32>}> : () -> !torch_vtensor
            %3 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
            "func.return"(%3) : (!torch_vtensor) -> ()
    }) : () -> ()
}) : () -> ()