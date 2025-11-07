"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[32,3,8,8],si8>, !torch.vtensor<[32],f32>, !torch.vtensor<[32],si8>) -> !torch.vtensor<[32,3,8,8],f32>, sym_name = "dequantize_per_channel"}> ({
  ^bb0(%arg0: !torch.vtensor<[32,3,8,8],si8>, %arg1: !torch.vtensor<[32],f32>, %arg2: !torch.vtensor<[32],si8>):
    %0 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %4 = "torch.operator"(%arg0, %arg1, %arg2, %3, %0, %1, %2) <{name = "torch.quantized_decomposed.dequantize_per_channel"}> : (!torch.vtensor<[32,3,8,8],si8>, !torch.vtensor<[32],f32>, !torch.vtensor<[32],si8>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[32,3,8,8],f32>
    "func.return"(%4) : (!torch.vtensor<[32,3,8,8],f32>) -> ()
  }) : () -> ()
}) : () -> ()

