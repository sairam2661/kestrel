"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_invocation, !torch_vtensor_invocation) -> !torch_vtensor_invocation, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_invocation, %arg1: !torch_vtensor_invocation):
    %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_float) -> !torch_list
    %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_invocation, !torch_vtensor_invocation) -> !torch_vtensor_invocation
    %4 = "torch.aten.mul.Tensor"(%3, %arg0) : (!torch_vtensor_invocation, !torch_vtensor_invocation) -> !torch_vtensor_invocation
    %5 = "torch.aten.div.Tensor"(%4, %arg1) : (!torch_vtensor_invocation, !torch_vtensor_invocation) -> !torch_vtensor_invocation
    %6 = "torch.aten.abs"(%5) : (!torch_vtensor_invocation) -> !torch_vtensor_invocation
    "func.return"(%6) : (!torch_vtensor_invocation) -> ()
  }) : () -> ()
}) : () -> ()