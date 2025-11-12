"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10tensor, !torchv10tensor) -> !torchv10tensor, sym_name = "add_and_slice"}> ({
    ^bb0(%arg0: !torchv10tensor, %arg1: !torchv10tensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
      %1 = "torch.aten.size.int"(%0, %c0) : (!torchv10tensor, !torchv10int) -> !torchv10int
      %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torchv10int) -> !torchv10tensor
      %3 = "torch.aten.slice.Tensor"(%0, %c0, %c0, %2, %c1) : (!torchv10tensor, !torchv10int, !torchv10int, !torchv10tensor, !torchv10int) -> !torchv10tensor
      "func.return"(%3) : (!torchv10tensor) -> ()
  }) : () -> ()
}) : () -> ()