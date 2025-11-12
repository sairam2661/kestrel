"builtin.module"() ({
  "func.func"() <{function_type = (!torchv2, !torchv3) -> !torchv4, sym_name = "complex_fuzz_function"}> ({
  ^bb0(%arg0: !torchv2, %arg1: !torchv3):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv2
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv2
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv2
    %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv2
    %c4 = "torch.constant.bool"() <{value = true}> : () -> !torchv3
    %5 = "torch.constant.str"() <{value = "hello"}> : () -> !torchv3
    %6 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchv4
    %7 = "torch.aten.view"(%arg0, %c1, %c2) : (!torchv2, !torchv2, !torchv2) -> !torchv5
    %8 = "torch.aten.slice.Tensor"(%arg1, %c0, %c1, %c2, %c3) : (!torchv3, !torchv2, !torchv2, !torchv2, !torchv2) -> !torchv6
    %9 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchv2, !torchv3) -> !torchv2
    %10 = "torch.aten._shape_as_tensor"(%arg0) : (!torchv2) -> !torchv7
    %11 = "torch.aten.item"(%arg0) : (!torchv2) -> !torchv8
    %12 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchv2, !torchv3) -> !torchv9
    %13 = "torch.aten.size.int"(%arg0, %c0) : (!torchv2, !torchv2) -> !torchv10
    %14 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %c1, %c2) : (!torchv2, !torchv3, !torchv2, !torchv2) -> !torchv11
    "func.return"(%14) : (!torchv11) -> ()
  }) : () -> ()
}) : () -> ()