"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[2,128,32,32],si8>) -> !torch.vtensor<[1,1024,1024],f32>, sym_name = "matmul_commuting"}> ({
  ^bb0(%arg0: !torch.vtensor<[2,128,32,32],si8>):
    %0 = "torch.constant.float"() <{value = 5.000000e-01 : f64}> : () -> !torch.float
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.constant.int"() <{value = 128 : i64}> : () -> !torch.int
    %6 = "torch.constant.int"() <{value = 1024 : i64}> : () -> !torch.int
    %7 = "torch.constant.int"() <{value = 12 : i64}> : () -> !torch.int
    %8 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %3) : (!torch.vtensor<[2,128,32,32],si8>, !torch.float, !torch.int) -> !torch.vtensor<[2,128,32,32],!torch.qint8>
    %9 = "torch.aten.dequantize.self"(%8) : (!torch.vtensor<[2,128,32,32],!torch.qint8>) -> !torch.vtensor<[2,128,32,32],f32>
    %10 = "torch.aten.slice.Tensor"(%9, %1, %1, %2, %2) : (!torch.vtensor<[2,128,32,32],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1,128,32,32],f32>
    %11 = "torch.aten.slice.Tensor"(%9, %1, %2, %4, %2) : (!torch.vtensor<[2,128,32,32],f32>, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1,128,32,32],f32>
    %12 = "torch.prim.ListConstruct"(%2, %5, %6) : (!torch.int, !torch.int, !torch.int) -> !torch.list<int>
    %13 = "torch.aten.reshape"(%10, %12) : (!torch.vtensor<[1,128,32,32],f32>, !torch.list<int>) -> !torch.vtensor<[1,128,1024],f32>
    %14 = "torch.aten.reshape"(%11, %12) : (!torch.vtensor<[1,128,32,32],f32>, !torch.list<int>) -> !torch.vtensor<[1,128,1024],f32>
    %15 = "torch.aten.transpose.int"(%13, %2, %4) : (!torch.vtensor<[1,128,1024],f32>, !torch.int, !torch.int) -> !torch.vtensor<[1,1024,128],f32>
    %16 = "torch.aten.quantize_per_tensor"(%15, %0, %1, %7) : (!torch.vtensor<[1,1024,128],f32>, !torch.float, !torch.int, !torch.int) -> !torch.vtensor<[1,1024,128],!torch.qint8>
    %17 = "torch.aten.int_repr"(%16) : (!torch.vtensor<[1,1024,128],!torch.qint8>) -> !torch.vtensor<[1,1024,128],si8>
    %18 = "torch.aten._make_per_tensor_quantized_tensor"(%17, %0, %1) : (!torch.vtensor<[1,1024,128],si8>, !torch.float, !torch.int) -> !torch.vtensor<[1,1024,128],!torch.qint8>
    %19 = "torch.aten.dequantize.self"(%18) : (!torch.vtensor<[1,1024,128],!torch.qint8>) -> !torch.vtensor<[1,1024,128],f32>
    %20 = "torch.aten.matmul"(%19, %14) : (!torch.vtensor<[1,1024,128],f32>, !torch.vtensor<[1,128,1024],f32>) -> !torch.vtensor<[1,1024,1024],f32>
    "func.return"(%20) : (!torch.vtensor<[1,1024,1024],f32>) -> ()
  }) : () -> ()
}) : () -> ()

