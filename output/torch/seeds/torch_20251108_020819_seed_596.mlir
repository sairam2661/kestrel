"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor1d, !torch_tensor1d) -> !torch_tensor1d, sym_name = "torch_aten_cat_fuzzer"}> ({
    ^bb0(%arg0: !torch_tensor1d, %arg1: !torch_tensor1d):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_tensor1d) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1) : (!torch_tensor1d) -> !torch_int
      %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_tensor1d
      %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_tensor1d
      %4 = "torch.aten.cat"(%arg0, %arg1, %2, %3) : (!torch_tensor1d, !torch_tensor1d, !torch_tensor1d, !torch_tensor1d) -> !torch_tensor1d
      "func.return"(%4) : (!torch_tensor1d) -> ()
  }) : () -> ()
}) : () -> ()