"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],si8>, !torch.vtensor<[?,?,?,?],si8>, !torch.vtensor<[?],f32>) -> !torch.vtensor<[?,?,?,?],f32>, sym_name = "q_conv_test"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],si8>, %arg1: !torch.vtensor<[?,?,?,?],si8>, %arg2: !torch.vtensor<[?],f32>):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.float"() <{value = 1.000000e-04 : f64}> : () -> !torch.float
    %4 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %6 = "torch.constant.float"() <{value = 1.000000e-02 : f64}> : () -> !torch.float
    %7 = "torch.constant.int"() <{value = 14 : i64}> : () -> !torch.int
    %8 = "torch.aten.quantize_per_tensor"(%arg2, %3, %2, %7) : (!torch.vtensor<[?],f32>, !torch.float, !torch.int, !torch.int) -> !torch.vtensor<[?],!torch.qint32>
    %9 = "torch.aten.dequantize.self"(%8) : (!torch.vtensor<[?],!torch.qint32>) -> !torch.vtensor<[?],f32>
    %10 = "torch.prim.ListConstruct"(%1, %1) : (!torch.int, !torch.int) -> !torch.list<int>
    %11 = "torch.prim.ListConstruct"(%2, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %12 = "torch.prim.ListConstruct"() : () -> !torch.list<int>
    %13 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %6, %5) : (!torch.vtensor<[?,?,?,?],si8>, !torch.float, !torch.int) -> !torch.vtensor<[?,?,?,?],!torch.qint8>
    %14 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %6, %4) : (!torch.vtensor<[?,?,?,?],si8>, !torch.float, !torch.int) -> !torch.vtensor<[?,?,?,?],!torch.qint8>
    %15 = "torch.aten.quantize_per_tensor"(%9, %3, %2, %7) : (!torch.vtensor<[?],f32>, !torch.float, !torch.int, !torch.int) -> !torch.vtensor<[?],!torch.qint32>
    %16 = "torch.aten.int_repr"(%15) : (!torch.vtensor<[?],!torch.qint32>) -> !torch.vtensor<[?],si32>
    %17 = "torch.aten.convolution"(%13, %14, %16, %10, %11, %10, %0, %12, %1) : (!torch.vtensor<[?,?,?,?],!torch.qint8>, !torch.vtensor<[?,?,?,?],!torch.qint8>, !torch.vtensor<[?],si32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.vtensor<[?,?,?,?],si32>
    %18 = "torch.aten._make_per_tensor_quantized_tensor"(%17, %3, %2) : (!torch.vtensor<[?,?,?,?],si32>, !torch.float, !torch.int) -> !torch.vtensor<[?,?,?,?],!torch.qint32>
    %19 = "torch.aten.dequantize.tensor"(%18) : (!torch.vtensor<[?,?,?,?],!torch.qint32>) -> !torch.vtensor<[?,?,?,?],f32>
    "func.return"(%19) : (!torch.vtensor<[?,?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

