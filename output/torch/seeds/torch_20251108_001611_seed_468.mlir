"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensor$2x3x3xf32, !torchvTensor$2x3x3xf32) -> !torchvTensor$2x3x3xf32, sym_name = "complex_tensor_op_combo"}> ({
  ^bb0(%arg0: !torchvTensor$2x3x3xf32, %arg1: !torchvTensor$2x3x3xf32):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torchbool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %2 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
    %3 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchvTensor$2x3x3xf32, !torchvTensor$2x3x3xf32) -> !torchlist$vtensor
    %4 = "torch.aten.cat"(%3, %1) : (!torchlist$vtensor, !torchint) -> !torchvTensor$4x3x3xf32
    %5 = "torch.aten.slice.Tensor"(%4, %1, %1, %1, %1) : (!torchvTensor$4x3x3xf32, !torchint, !torchint, !torchint, !torchint) -> !torchvTensor$1x3x3xf32
    %6 = "torch.aten.add.Tensor"(%5, %5) : (!torchvTensor$1x3x3xf32, !torchvTensor$1x3x3xf32) -> !torchvTensor$1x3x3xf32
    "func.return"(%6) : (!torchvTensor$1x3x3xf32) -> ()
  }) : () -> ()
}) : () -> ()