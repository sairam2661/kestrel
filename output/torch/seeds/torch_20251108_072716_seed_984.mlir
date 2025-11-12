"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "torch.fuzz.sparse_cat"}> ({
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_tensor
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_tensor
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_tensor
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_tensor, !torch_tensor, !torch_tensor) -> !torch_list
    %4 = "torch.torch_tensor.literal"() <{value = dense<1.0> : tensor<2x3xf32>}> : () -> !torch_tensor
    %5 = "torch.torch_tensor.literal"() <{value = dense<2.0> : tensor<2x3xf32>}> : () -> !torch_tensor
    %6 = "torch.torch_tensor.literal"() <{value = dense<3.0> : tensor<2x3xf32>}> : () -> !torch_tensor
    %7 = "torch.prim.ListConstruct"(%4, %5, %6) : (!torch_tensor, !torch_tensor, !torch_tensor) -> !torch_list
    %8 = "torch.aten.cat"(%7, %3) : (!torch_list, !torch_list) -> !torch_tensor
    "func.return"(%8) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()