"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_lit, !torch_vtensor_lit) -> !torch_vtensor_lit, sym_name = "complex_select_add"}> ({
  ^bb0(%arg0: !torch_vtensor_lit, %arg1: !torch_vtensor_lit):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.vtensor.literal"() <{value = dense<2> : tensor<2xi32>}> : () -> !torch_vtensor_lit
    %3 = "torch.aten.index_select"(%arg0, %0, %2) : (!torch_vtensor_lit, !torch_int, !torch_vtensor_lit) -> !torch_vtensor_lit
    %4 = "torch.aten.index_select"(%arg1, %0, %2) : (!torch_vtensor_lit, !torch_int, !torch_vtensor_lit) -> !torch_vtensor_lit
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor_lit, !torch_vtensor_lit) -> !torch_vtensor_lit
    "func.return"(%5) : (!torch_vtensor_lit) -> ()
  }) : () -> ()
}) : () -> ()