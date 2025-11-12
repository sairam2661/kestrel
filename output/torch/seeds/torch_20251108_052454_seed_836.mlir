"builtin.module"() ({
  "func.func"() <{function_type = (!torch$vtensor$shape$dim$4x5x6xf32, !torch$vtensor$shape$dim$4x5x6xf32) -> !torch$vtensor$shape$dim$4x5xf32, sym_name = "custom_add_slice"}> ({
  ^bb0(%arg0: !torch$vtensor$shape$dim$4x5x6xf32, %arg1: !torch$vtensor$shape$dim$4x5x6xf32):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch$vtensor$shape$dim$1x1xf32
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch$vtensor$shape$dim$1x1xf32
    %2 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch$vtensor$shape$dim$1x1xf32
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torch$vtensor$shape$dim$4x5x6xf32, !torch$vtensor$shape$dim$1x1xf32, !torch$vtensor$shape$dim$1x1xf32, !torch$vtensor$shape$dim$1x1xf32) -> !torch$vtensor$shape$dim$4x5x5xf32
    %4 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %2) : (!torch$vtensor$shape$dim$4x5x6xf32, !torch$vtensor$shape$dim$1x1xf32, !torch$vtensor$shape$dim$1x1xf32, !torch$vtensor$shape$dim$1x1xf32) -> !torch$vtensor$shape$dim$4x5x5xf32
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch$vtensor$shape$dim$4x5x5xf32, !torch$vtensor$shape$dim$4x5x5xf32) -> !torch$vtensor$shape$dim$4x5x5xf32
    %6 = "torch.aten.view"(%5, %0, %1) : (!torch$vtensor$shape$dim$4x5x5xf32, !torch$vtensor$shape$dim$1x1xf32, !torch$vtensor$shape$dim$1x1xf32) -> !torch$vtensor$shape$dim$4x5xf32
    "func.return"(%6) : (!torch$vtensor$shape$dim$4x5xf32) -> ()
  }) : () -> ()
}) : () -> ()