"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[8,8],si8>, !torch.vtensor<[11,4],si8>) -> !torch.vtensor<[9,4],f32>, sym_name = "mm_pad_commute"}> ({
  ^bb0(%arg0: !torch.vtensor<[8,8],si8>, %arg1: !torch.vtensor<[11,4],si8>):
    %0 = "torch.constant.float"() <{value = 5.000000e-01 : f64}> : () -> !torch.float
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.constant.float"() <{value = 3.500000e+00 : f64}> : () -> !torch.float
    %6 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch.int
    %7 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %3) : (!torch.vtensor<[8,8],si8>, !torch.float, !torch.int) -> !torch.vtensor<[8,8],!torch.qint8>
    %8 = "torch.aten.dequantize.tensor"(%7) : (!torch.vtensor<[8,8],!torch.qint8>) -> !torch.vtensor<[8,8],f32>
    %9 = "torch.prim.ListConstruct"(%3, %4, %2, %3) : (!torch.int, !torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %10 = "torch.constant.str"() <{value = "constant"}> : () -> !torch.str
    %11 = "torch.aten.pad"(%8, %9, %10, %5) : (!torch.vtensor<[8,8],f32>, !torch.list<int>, !torch.str, !torch.float) -> !torch.vtensor<[9,11],f32>
    %12 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %2) : (!torch.vtensor<[11,4],si8>, !torch.float, !torch.int) -> !torch.vtensor<[11,4],!torch.qint8>
    %13 = "torch.aten.dequantize.tensor"(%12) : (!torch.vtensor<[11,4],!torch.qint8>) -> !torch.vtensor<[11,4],f32>
    %14 = "torch.aten.mm"(%11, %13) : (!torch.vtensor<[9,11],f32>, !torch.vtensor<[11,4],f32>) -> !torch.vtensor<[9,4],f32>
    "func.return"(%14) : (!torch.vtensor<[9,4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

