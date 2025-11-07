"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,3,8,8],si8>, !torch.vtensor<[3,3,2,2],si8>) -> !torch.vtensor<[1,3,7,7],f32>, sym_name = "convolution_nobias"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,3,8,8],si8>, %arg1: !torch.vtensor<[3,3,2,2],si8>):
    %0 = "torch.constant.float"() <{value = 5.000000e-01 : f64}> : () -> !torch.float
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch.int
    %5 = "torch.constant.none"() : () -> !torch.none
    %6 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %3) : (!torch.vtensor<[1,3,8,8],si8>, !torch.float, !torch.int) -> !torch.vtensor<[1,3,8,8],!torch.qint8>
    %7 = "torch.aten.dequantize.tensor"(%6) : (!torch.vtensor<[1,3,8,8],!torch.qint8>) -> !torch.vtensor<[1,3,8,8],f32>
    %8 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %2) : (!torch.vtensor<[3,3,2,2],si8>, !torch.float, !torch.int) -> !torch.vtensor<[3,3,2,2],!torch.qint8>
    %9 = "torch.aten.dequantize.tensor"(%8) : (!torch.vtensor<[3,3,2,2],!torch.qint8>) -> !torch.vtensor<[3,3,2,2],f32>
    %10 = "torch.prim.ListConstruct"(%3, %3) : (!torch.int, !torch.int) -> !torch.list<int>
    %11 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %12 = "torch.aten.convolution"(%7, %9, %5, %10, %11, %10, %1, %11, %3) : (!torch.vtensor<[1,3,8,8],f32>, !torch.vtensor<[3,3,2,2],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.vtensor<[1,3,7,7],f32>
    "func.return"(%12) : (!torch.vtensor<[1,3,7,7],f32>) -> ()
  }) : () -> ()
}) : () -> ()

