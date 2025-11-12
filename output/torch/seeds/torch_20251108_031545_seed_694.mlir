"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "complex_shape_operations"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.aten.index_select"(%arg0, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %3 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch_float
    %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %5 = "torch.aten.eq.Tensor"(%arg0, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.item"(%5) : (!torch_vtensor) -> !torch_float
    "func.return"(%6) : (!torch_float) -> ()
  }) : () -> ()
}) : () -> ()