"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?],f32>, !torch.vtensor<[?],si32>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "torch.aten.fake_quantize_per_channel_affine_cachemask"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>, %arg1: !torch.vtensor<[?],f32>, %arg2: !torch.vtensor<[?],si32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch.int
    %3:2 = "torch.aten.fake_quantize_per_channel_affine_cachemask"(%arg0, %arg1, %arg2, %0, %2, %1) : (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?],f32>, !torch.vtensor<[?],si32>, !torch.int, !torch.int, !torch.int) -> (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,?,?],i1>)
    "func.return"(%3#0) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

