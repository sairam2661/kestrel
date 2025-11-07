"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,4,4],f32>) -> !torch.vtensor<[2,4,4],f32>, sym_name = "test_quantization_per_tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,4,4],f32>):
    %0 = "torch.constant.int"() <{value = 12 : i64}> : () -> !torch.int
    %1 = "torch.constant.float"() <{value = 1.000000e-01 : f64}> : () -> !torch.float
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.aten.quantize_per_tensor"(%arg0, %1, %2, %0) : (!torch.vtensor<[2,4,4],f32>, !torch.float, !torch.int, !torch.int) -> !torch.vtensor<[2,4,4],!torch.qint8>
    %4 = "torch.aten.int_repr"(%3) : (!torch.vtensor<[2,4,4],!torch.qint8>) -> !torch.vtensor<[2,4,4],si8>
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%4, %1, %2) : (!torch.vtensor<[2,4,4],si8>, !torch.float, !torch.int) -> !torch.vtensor<[2,4,4],!torch.qint8>
    %6 = "torch.aten.dequantize.self"(%5) : (!torch.vtensor<[2,4,4],!torch.qint8>) -> !torch.vtensor<[2,4,4],f32>
    "func.return"(%6) : (!torch.vtensor<[2,4,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

