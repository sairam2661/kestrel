"builtin.module"() ({
  "func.func"() <{function_type = (!torch, !torch) -> !torch, sym_name = "complex_interaction"}> ({
    ^bb0(%arg0: !torch, %arg1: !torch):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch
      %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch
      %2 = "torch.constant.str"() <{value = "hello"}> : () -> !torch
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch
      %4 = "torch.constant.none"() : () -> !torch
      %5 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch) -> !torch
      %6 = "torch.aten.item"(%5) : (!torch) -> !torch
      %7 = "torch.prim.ListConstruct"(%0, %1, %2, %3, %4, %5) : (!torch, !torch, !torch, !torch, !torch, !torch) -> !torch
      %8 = "torch.aten.size.int"(%7) : (!torch) -> !torch
      %9 = "torch.aten._make_per_tensor_quantized_tensor"(%7, %0, %1) : (!torch, !torch, !torch) -> !torch
      %10 = "torch.aten.cat"(%7, %7, %0) : (!torch, !torch, !torch) -> !torch
      %11 = "torch.aten._shape_as_tensor"(%7) : (!torch) -> !torch
      %12 = "torch.aten.slice.Tensor"(%7, %0, %0, %1) : (!torch, !torch, !torch, !torch) -> !torch
      %13 = "torch.aten.view"(%7, %0) : (!torch, !torch) -> !torch
      %14 = "torch.aten.eq.Tensor"(%7, %13) : (!torch, !torch) -> !torch
      "func.return"(%14) : (!torch) -> ()
  }) : () -> ()
}) : () -> ()