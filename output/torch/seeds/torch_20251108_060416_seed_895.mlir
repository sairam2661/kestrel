"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_add_divide"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.unary.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.binary.mul"(%0, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.unary.squeeze"(%1) : (!torch_vtensor) -> !torch_vtensor
    %3 = "torch.constant.float"() <{value = 2.000000e+00 : f32}> : () -> !torch_vtensor
    %4 = "torch.binary.div"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()