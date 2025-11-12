"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3x3x3xf32, !torch_int) -> !torch_vtensor_3x3x3xf32, sym_name = "torch_slice_item"}> ({
  ^bb0(%arg0: !torch_vtensor_3x3x3xf32, %arg1: !torch_int):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torch_vtensor_3x3x3xf32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_3x3x3xf32
    "func.return"(%3) : (!torch_vtensor_3x3x3xf32) -> ()
  }) : () -> ()
}) : () -> ()