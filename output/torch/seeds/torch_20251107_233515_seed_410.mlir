"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> (!torch_vtensor_literal, !torch_vtensor_literal), sym_name = "fuzz_func"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> !torch_vtensor_literal
    %1 = "torch.vtensor.literal"() <{value = dense<[[5, 6], [7, 8]]> : tensor<2x2xi32>}> : () -> !torch_vtensor_literal
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_vtensor_literal) -> tensor<?xi64>
    %4 = "torch.prim.NumToTensor.Scalar"() <{value = 1 : i64}> : () -> !torch_vtensor_literal
    %5 = "torch.aten.cat"(%3, %4) : (tensor<?xi64>, !torch_vtensor_literal) -> !torch_vtensor_literal
    "func.return"(%2, %5) : (!torch_vtensor_literal, !torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()