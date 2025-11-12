"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10tensor, !torchv10tensor) -> !torchv10tensor, sym_name = "torch_aten_slice_tensor"}> ({
    ^bb0(%arg0: !torchv10tensor, %arg1: !torchv10tensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv10int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv10int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv10int
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv10int
      %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv10int
      %5 = "torch.constant.none"() : () -> !torchv10none
      %6 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2, %3) : (!torchv10tensor, !torchv10int, !torchv10int, !torchv10int, !torchv10int) -> !torchv10tensor
      %7 = "torch.aten.slice.Tensor"(%arg1, %0, %4, %2, %3) : (!torchv10tensor, !torchv10int, !torchv10int, !torchv10int, !torchv10int) -> !torchv10tensor
      %8 = "torch.aten.eq.Tensor"(%6, %7) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
      "func.return"(%8) : (!torchv10tensor) -> ()
  }) : () -> ()
}) : () -> ()