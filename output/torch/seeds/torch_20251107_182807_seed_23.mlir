"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_float) -> !torch_list
    %3 = "torch.vtensor.literal"() <{value = dense<[[0, 1], [2, 3]]> : tensor<2x2xf32>}> : () -> !torch_vtensor
    %4 = "torch.operator"(%arg0, %3, %2) <{name = "custom_op"}> : (!torch_vtensor, !torch_vtensor, !torch_list) -> !torch_vtensor
    %5 = "torch.aten.relu"(%4) : (!torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.add.Scalar"(%5, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()