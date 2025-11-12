"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10__convolution, !torchv10__convolution, !torchv10__convolution) -> !torchv10__convolution, sym_name = "convolution_fuzz"}> ({
  ^bb0(%arg0: !torchv10__convolution, %arg1: !torchv10__convolution, %arg2: !torchv10__convolution):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv10__int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv10__int
    %2 = "torch.constant.float"() <{value = 1.000000e-04 : f64}> : () -> !torchv10__float
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv10__int
    %4 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torchv10__int
    %5 = "torch.constant.float"() <{value = 1.000000e-02 : f64}> : () -> !torchv10__float
    %6 = "torch.constant.int"() <{value = 14 : i64}> : () -> !torchv10__int
    %7 = "torch.aten.quantize_per_tensor"(%arg0, %3, %2, %6) : (!torchv10__convolution, !torchv10__float, !torchv10__int, !torchv10__int) -> !torchv10__convolution
    %8 = "torch.aten.dequantize.self"(%7) : (!torchv10__convolution) -> !torchv10__convolution
    %9 = "torch.prim.ListConstruct"(%0, %0) : (!torchv10__int, !torchv10__int) -> !torchv10__list
    %10 = "torch.prim.ListConstruct"(%1, %1) : (!torchv10__int, !torchv10__int) -> !torchv10__list
    %11 = "torch.prim.ListConstruct"() : () -> !torchv10__list
    %12 = "torch.aten.quantize_per_tensor"(%8, %3, %2, %6) : (!torchv10__convolution, !torchv10__float, !torchv10__int, !torchv10__int) -> !torchv10__convolution
    %13 = "torch.aten.int_repr"(%12) : (!torchv10__convolution) -> !torchv10__convolution
    %14 = "torch.aten.convolution"(%arg1, %arg2, %13, %9, %10, %9, %1, %11, %0) : (!torchv10__convolution, !torchv10__convolution, !torchv10__convolution, !torchv10__list, !torchv10__list, !torchv10__list, !torchv10__bool, !torchv10__list, !torchv10__int) -> !torchv10__convolution
    %15 = "torch.aten._make_per_tensor_quantized_tensor"(%14, %3, %2) : (!torchv10__convolution, !torchv10__float, !torchv10__int) -> !torchv10__convolution
    %16 = "torch.aten.dequantize.tensor"(%15) : (!torchv10__convolution) -> !torchv10__convolution
    "func.return"(%16) : (!torchv10__convolution) -> ()
  }) : () -> ()
}) : () -> ()