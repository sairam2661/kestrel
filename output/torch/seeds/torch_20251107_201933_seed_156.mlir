"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch_float
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %3 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.mul"(%arg2, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %5 = "torch.aten.sub"(%3, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.relu"(%5) : (!torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.sigmoid"(%6) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()