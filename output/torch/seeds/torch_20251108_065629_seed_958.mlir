"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_lit0, !torch_vtensor_lit1) -> (!torch_vtensor_lit0, !torch_vtensor_lit1), sym_name = "torch.aten.add.Tensor_and_cat"}> ({
  ^bb0(%arg0: !torch_vtensor_lit0, %arg1: !torch_vtensor_lit1):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_lit0, !torch_vtensor_lit1) -> !torch_vtensor_lit0
    %1 = "torch.size.int"(%0) : (!torch_vtensor_lit0) -> !torch_vtensor_lit0
    %2 = "torch.vtensor.literal"() <{value = dense<2> : tensor<1xi64>}> : () -> !torch_vtensor_lit0
    %3 = "torch.cat"(%arg0, %arg1) : (!torch_vtensor_lit0, !torch_vtensor_lit1) -> !torch_vtensor_lit0
    "func.return"(%0, %3) : (!torch_vtensor_lit0, !torch_vtensor_lit0) -> ()
  }) : () -> ()
}) : () -> ()