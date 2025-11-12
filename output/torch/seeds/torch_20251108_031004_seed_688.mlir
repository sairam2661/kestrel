"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral_tensor5si64, !torchnone) -> !torchnone, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torchvtensorliteral_tensor5si64, %arg1: !torchnone):
      %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %c4_i64 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchint
      %list = "torch.prim.ListConstruct"(%c0_i64, %c1_i64, %c2_i64, %c3_i64, %c4_i64) : (!torchint, !torchint, !torchint, !torchint, !torchint) -> !torchlistint
      %view = "torch.aten.view"(%arg0, %list) : (!torchvtensorliteral_tensor5si64, !torchlistint) -> !torchvtensorliteral_tensor1x5si64
      %slice = "torch.aten.slice.Tensor"(%view, %c0_i64, %c1_i64, %c3_i64) : (!torchvtensorliteral_tensor1x5si64, !torchint, !torchint, !torchint) -> !torchvtensorliteral_tensor1x3si64
      %size = "torch.aten.size.int"(%slice, %c0_i64) : (!torchvtensorliteral_tensor1x3si64, !torchint) -> !torchint
      %size_as_tensor = "torch.aten._shape_as_tensor"(%size) : (!torchint) -> !torchvtensorliteral_tensor1xsi64
      %cat = "torch.aten.cat"(%slice, %size_as_tensor) : (!torchvtensorliteral_tensor1x3si64, !torchvtensorliteral_tensor1xsi64) -> !torchvtensorliteral_tensor1x4si64
      "func.return"(%arg1) : (!torchnone) -> ()
  }) : () -> ()
}) : () -> ()