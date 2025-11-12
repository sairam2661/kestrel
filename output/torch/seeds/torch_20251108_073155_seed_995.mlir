"builtin.module"() ({
  "func.func"() <{function_type = (!torch$vtensor$shape$feature$128x128x3x16$f32, !torch$vtensor$shape$128x128x3x16$f32) -> !torch$vtensor$shape$128x128x3x16$f32, sym_name = "add_and_normalize"}> ({
  ^bb0(%arg0: !torch$vtensor$shape$128x128x3x16$f32, %arg1: !torch$vtensor$shape$128x128x3x16$f32):
    %0 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch$vfloat
    %1 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch$vfloat
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch$vint
    %3 = "torch.constant.str"() <{value = "clamp"}> : () -> !torch$vstring
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1, %2) : (!torch$vtensor$shape$128x128x3x16$f32, !torch$vtensor$shape$128x128x3x16$f32, !torch$vint) -> !torch$vtensor$shape$128x128x3x16$f32
    %5 = "torch.aten.div.Scalar"(%4, %0) : (!torch$vtensor$shape$128x128x3x16$f32, !torch$vfloat) -> !torch$vtensor$shape$128x128x3x16$f32
    %6 = "torch.aten.add.Scalar"(%5, %1) : (!torch$vtensor$shape$128x128x3x16$f32, !torch$vfloat) -> !torch$vtensor$shape$128x128x3x16$f32
    %7 = "torch.aten.clamp"(%6, %0, %1) : (!torch$vtensor$shape$128x128x3x16$f32, !torch$vfloat, !torch$vfloat) -> !torch$vtensor$shape$128x128x3x16$f32
    "func.return"(%7) : (!torch$vtensor$shape$128x128x3x16$f32) -> ()
  }) : () -> ()
}) : () -> ()