"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral, sym_name = "fuzzy_torch_operations"}> ({
    ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchvtensorliteral, %arg2: !torchvtensorliteral):
      %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %2 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %1, %1, %0) : (!torchvtensorliteral, !torchint, !torchint, !torchvtensorliteral) -> !torchvtensorliteral
      %3 = "torch.aten.slice.Tensor"(%2, %1, %1, %1) : (!torchvtensorliteral, !torchint, !torchint, !torchint) -> !torchvtensorliteral
      %4 = "torch.aten.view"(%3, %0) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      "func.return"(%4) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantfloat, !torchconstantstr) -> !torchint, sym_name = "mixed_type_operations"}> ({
    ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantfloat, %arg2: !torchconstantstr):
      %0 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torchconstantbool, !torchconstantfloat, !torchconstantstr) -> !torchlist
      %1 = "torch.aten.cat"(%0) : (!torchlist) -> !torchvtensorliteral
      "func.return"(%1) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral, sym_name = "tensor_shape_manipulation"}> ({
    ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchvtensorliteral):
      %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torchvtensorliteral) -> !torchvtensorliteral
      %1 = "torch.aten.slice.Tensor"(%0, %1, %1, %1) : (!torchvtensorliteral, !torchvtensorliteral, !torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      %2 = "torch.aten.view"(%arg0, %1) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      "func.return"(%2) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchvtensorliteral) -> !torchint, sym_name = "tensor_comparison"}> ({
    ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchvtensorliteral):
      %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      %1 = "torch.aten.item"(%0) : (!torchvtensorliteral) -> !torchint
      "func.return"(%1) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()