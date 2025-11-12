"builtin.module"() ({
  "func.func"() <{function_type = (!torch_CONSTANT_TYPE, !torch_CONSTANT_TYPE, !torch_CONSTANT_TYPE, !torch_CONSTANT_TYPE) -> !torch_CONSTANT_TYPE, sym_name = "fuzz_sample"}> ({
    ^bb0(%arg0: !torch_CONSTANT_TYPE, %arg1: !torch_CONSTANT_TYPE, %arg2: !torch_CONSTANT_TYPE, %arg3: !torch_CONSTANT_TYPE):
      %0 = "torch.prim.NumToTensor.Scalar"(%arg0) : (!torch_CONSTANT_TYPE) -> !torch_CONSTANT_TYPE
      %1 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_CONSTANT_TYPE) -> !torch_CONSTANT_TYPE
      %2 = "torch.prim.NumToTensor.Scalar"(%arg2) : (!torch_CONSTANT_TYPE) -> !torch_CONSTANT_TYPE
      %3 = "torch.prim.NumToTensor.Scalar"(%arg3) : (!torch_CONSTANT_TYPE) -> !torch_CONSTANT_TYPE
      %4 = "torch.aten.add.Tensor"(%0, %1) : (!torch_CONSTANT_TYPE, !torch_CONSTANT_TYPE) -> !torch_CONSTANT_TYPE
      %5 = "torch.aten.add.Tensor"(%2, %3) : (!torch_CONSTANT_TYPE, !torch_CONSTANT_TYPE) -> !torch_CONSTANT_TYPE
      %6 = "torch.aten.cat"(%4, %5) : (!torch_CONSTANT_TYPE, !torch_CONSTANT_TYPE) -> !torch_CONSTANT_TYPE
      "func.return"(%6) : (!torch_CONSTANT_TYPE) -> ()
  }) : () -> ()
}) : () -> ()