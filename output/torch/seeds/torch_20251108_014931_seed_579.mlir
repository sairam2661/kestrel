"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "torch.aten.cat$uncommon"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.aten.size.int"(%arg0, %c0_i64) : (!torchvtensor, i64) -> i64
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (i64) -> !torchvtensor
      %2 = "torch.aten.size.int"(%arg1, %c0_i64) : (!torchvtensor, i64) -> i64
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (i64) -> !torchvtensor
      %4 = "torch.aten.cat"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()