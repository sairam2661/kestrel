"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_primListConstruct, !torch_atensliceTensor) -> !torch_vtensorliteral, sym_name = "torch_complex_fuzz"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[1.0, 2.0, 3.0, 4.0]> : tensor<4xf32>}> : () -> !torch_vtensorliteral
    %1 = "torch.constant.float"() <{value = 1.5}> : () -> !torch_vtensorliteral
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_primListConstruct
    %3 = "torch.aten.slice.Tensor"(%0, %1, %1, %1) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_atensliceTensor
    "func.return"(%3) : (!torch_atensliceTensor) -> ()
  }) : () -> ()
}) : () -> ()