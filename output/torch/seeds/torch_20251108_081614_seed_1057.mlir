"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "multi_tensor_concat"}> ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.vtensor.literal"() <{value = dense<[[1.0], [2.0]]> : tensor<2x1xf32>}> : () -> !torch_vtensor_literal
    %3 = "torch.vtensor.literal"() <{value = dense<[[3.0], [4.0]]> : tensor<2x1xf32>}> : () -> !torch_vtensor_literal
    %4 = "torch.prim.ListConstruct"(%2, %3) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_list_vtensor_literal
    %5 = "torch.aten.cat"(%4, %0) : (!torch_list_vtensor_literal, !torch_int) -> !torch_vtensor_literal
    "func.return"(%5) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()