"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_10x10xf32, !torch_vtensor_10x10x10xf32) -> !torch_vtensor_10x10x10xf32, sym_name = "torch_fuzzing_func"}> ({
    ^bb0(%arg0: !torch_vtensor_10x10xf32, %arg1: !torch_vtensor_10x10x10xf32):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor_int
      %1 = "torch.aten.index_select"(%arg1, %0, %arg0) : (!torch_vtensor_10x10x10xf32, !torch_vtensor_int, !torch_vtensor_10x10xf32) -> !torch_vtensor_10x10xf32
      %2 = "torch.constant.float"() <{value = 1.5 : f64}> : () -> !torch_vtensor_float
      %3 = "torch.aten.add.Tensor"(%1, %2) : (!torch_vtensor_10x10xf32, !torch_vtensor_float) -> !torch_vtensor_10x10xf32
      "func.return"(%3) : (!torch_vtensor_10x10xf32) -> ()
  }) : () -> ()
}) : () -> ()