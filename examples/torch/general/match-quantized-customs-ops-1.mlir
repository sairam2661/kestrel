"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,3,8,8],si8>) -> !torch.vtensor<[1,3,8,8],f32>, sym_name = "dequantize_per_tensor"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,3,8,8],si8>):
    %0 = "torch.constant.float"() <{value = 5.000000e-01 : f64}> : () -> !torch.float
    %1 = "torch.constant.int"() <{value = 17 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch.int
    %3 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %5 = "torch.operator"(%arg0, %0, %1, %2, %3, %4) <{name = "torch.quantized_decomposed.dequantize_per_tensor"}> : (!torch.vtensor<[1,3,8,8],si8>, !torch.float, !torch.int, !torch.int, !torch.int, !torch.int) -> !torch.vtensor<[1,3,8,8],f32>
    "func.return"(%5) : (!torch.vtensor<[1,3,8,8],f32>) -> ()
  }) : () -> ()
}) : () -> ()

