"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.prim.NumToTensor.Scalar"() <{value = 42}> : () -> !torchvtensor
      %1 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> i64
      %2 = "torch.prim.NumToTensor.Scalar"() <{value = 100}> : () -> !torchvtensor
      %3 = "torch.aten.size.int"(%arg1) : (!torchvtensor) -> i64
      %4 = "arith.addi"(%1, %3) : (i64, i64) -> i64
      %5 = "torch.prim.NumToTensor.Scalar"() <{value = 256}> : () -> !torchvtensor
      %6 = "torch.aten.size.int"(%5) : (!torchvtensor) -> i64
      %7 = "torch.aten.eq.Tensor"(%4, %6) : (i64, i64) -> i1
      %8 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> i64
      %9 = "torch.aten.size.int"(%arg1) : (!torchvtensor) -> i64
      %10 = "arith.addi"(%8, %9) : (i64, i64) -> i64
      %11 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> i64
      %12 = "torch.aten.size.int"(%arg1) : (!torchvtensor) -> i64
      %13 = "arith.addi"(%11, %12) : (i64, i64) -> i64
      %14 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> i64
      %15 = "torch.aten.size.int"(%arg1) : (!torchvtensor) -> i64
      %16 = "arith.addi"(%14, %15) : (i64, i64) -> i64
      %17 = "torch.aten.cat"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%17) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()