"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[1],f32>, !torch.vtensor<[1],si32>, !torch.vtensor<[1],si64>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "torch.aten._fake_quantize_per_tensor_affine_cachemask_tensor_qparams"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],f32>, %arg1: !torch.vtensor<[1],f32>, %arg2: !torch.vtensor<[1],si32>, %arg3: !torch.vtensor<[1],si64>):
    %0 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch.int
    %2:2 = "torch.aten._fake_quantize_per_tensor_affine_cachemask_tensor_qparams"(%arg0, %arg1, %arg2, %arg3, %1, %0) : (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[1],f32>, !torch.vtensor<[1],si32>, !torch.vtensor<[1],si64>, !torch.int, !torch.int) -> (!torch.vtensor<[?,?,?,?],f32>, !torch.vtensor<[?,?,?,?],i1>)
    "func.return"(%2#0) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

