"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "torch.aten.matmul$complex"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
    %2 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch_float
    %3 = "torch.vtensor.literal"() <{value = dense<[[1.0, 2.0], [3.0, 4.0]]> : tensor<2x2xf32>}> : () -> !torch_vtensor
    %4 = "torch.aten.matmul"(%arg0, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()