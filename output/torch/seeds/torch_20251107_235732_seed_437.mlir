"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_bool) -> !torch_vtensor, sym_name = "complex_convolution"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor, %arg3: !torch_bool):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 0.001 : f64}> : () -> !torch_float
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %3 = "torch.constant.list"() <{value = dense<1> : tensor<1xi64>}> : () -> !torch_list
    %4 = "torch.constant.list"() <{value = dense<0> : tensor<1xi64>}> : () -> !torch_list
    %5 = "torch.constant.list"() <{value = dense<2> : tensor<1xi64>}> : () -> !torch_list
    %6 = "torch.aten._convolution.deprecated"(%arg0, %arg1, %arg2, %3, %4, %5, %arg3, %3, %4, %2, %2, %2) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_list, !torch_bool, !torch_bool, !torch_bool) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()