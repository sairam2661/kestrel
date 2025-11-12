"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1x3xf32) -> !torch_vtensor_1x1xf32, sym_name = "matrix_reduce_mean"}> ({
  ^bb0(%arg0: !torch_vtensor_1x3xf32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list_int
    %2 = "torch.aten.reduce_mean.dim"(%arg0, %1) : (!torch_vtensor_1x3xf32, !torch_list_int) -> !torch_vtensor_1x1xf32
    "func.return"(%2) : (!torch_vtensor_1x1xf32) -> ()
  }) : () -> ()
}) : () -> ()