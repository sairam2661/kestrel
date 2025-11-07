"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,3,7,7],f32>) -> !torch.vtensor<[4,3,7,7],f32>, sym_name = "test_quantization_per_channel"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,3,7,7],f32>):
    %0 = "torch.vtensor.literal"() <{value = dense<[4.000000e-01, 1.000000e-01, 2.000000e-01, 3.000000e-01]> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %1 = "torch.vtensor.literal"() <{value = dense<[4, 1, 2, 3]> : tensor<4xsi8>}> : () -> !torch.vtensor<[4],si8>
    %2 = "torch.constant.int"() <{value = 12 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %4 = "torch.aten.quantize_per_channel"(%arg0, %0, %1, %3, %2) : (!torch.vtensor<[4,3,7,7],f32>, !torch.vtensor<[4],f32>, !torch.vtensor<[4],si8>, !torch.int, !torch.int) -> !torch.vtensor<[4,3,7,7],!torch.qint8>
    %5 = "torch.aten.int_repr"(%4) : (!torch.vtensor<[4,3,7,7],!torch.qint8>) -> !torch.vtensor<[4,3,7,7],si8>
    %6 = "torch.aten._make_per_channel_quantized_tensor"(%5, %0, %1, %3) : (!torch.vtensor<[4,3,7,7],si8>, !torch.vtensor<[4],f32>, !torch.vtensor<[4],si8>, !torch.int) -> !torch.vtensor<[4,3,7,7],!torch.qint8>
    %7 = "torch.aten.dequantize.self"(%6) : (!torch.vtensor<[4,3,7,7],!torch.qint8>) -> !torch.vtensor<[4,3,7,7],f32>
    "func.return"(%7) : (!torch.vtensor<[4,3,7,7],f32>) -> ()
  }) : () -> ()
}) : () -> ()

