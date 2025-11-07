"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,4],si8>, !torch.vtensor<[4,4],si8>) -> !torch.vtensor<[4,4],f32>, sym_name = "mm"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,4],si8>, %arg1: !torch.vtensor<[4,4],si8>):
    %0 = "torch.constant.float"() <{value = 5.000000e-01 : f64}> : () -> !torch.float
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch.int
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %3) : (!torch.vtensor<[4,4],si8>, !torch.float, !torch.int) -> !torch.vtensor<[4,4],!torch.qint8>
    %6 = "torch.aten.dequantize.tensor"(%5) : (!torch.vtensor<[4,4],!torch.qint8>) -> !torch.vtensor<[4,4],f32>
    %7 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %2) : (!torch.vtensor<[4,4],si8>, !torch.float, !torch.int) -> !torch.vtensor<[4,4],!torch.qint8>
    %8 = "torch.aten.dequantize.tensor"(%7) : (!torch.vtensor<[4,4],!torch.qint8>) -> !torch.vtensor<[4,4],f32>
    %9 = "torch.aten.mm"(%6, %8) : (!torch.vtensor<[4,4],f32>, !torch.vtensor<[4,4],f32>) -> !torch.vtensor<[4,4],f32>
    "func.return"(%9) : (!torch.vtensor<[4,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

