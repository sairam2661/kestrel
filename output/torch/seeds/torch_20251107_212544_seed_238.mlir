"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2x3xf32, !torch_vtensor_2x3xi32) -> !torch_vtensor_2x3xf32, sym_name = "torch.prims.collapse$basic"}> ({
  ^bb0(%arg0: !torch_vtensor_2x3xf32, %arg1: !torch_vtensor_2x3xi32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.prims.collapse"(%arg0, %0, %1) : (!torch_vtensor_2x3xf32, !torch_int, !torch_int) -> !torch_vtensor_2x6xf32
    %3 = "torch.aten.view"(%2, %arg1) : (!torch_vtensor_2x6xf32, !torch_vtensor_2x3xi32) -> !torch_vtensor_2x3xf32
    "func.return"(%3) : (!torch_vtensor_2x3xf32) -> ()
  }) : () -> ()
}) : () -> ()