"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "tensor_fuzz"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor, %arg3: !torchvtensor):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvint
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvint
    %c16 = "torch.constant.int"() <{value = 16 : i64}> : () -> !torchvint
    %btrue = "torch.constant.bool"() <{value = true}> : () -> !torchvbool
    %bfalse = "torch.constant.bool"() <{value = false}> : () -> !torchvbool
    %s16 = "torch.constant.str"() <{value = "16"}> : () -> !torchvstr

    %slice0 = "torch.aten.slice.Tensor"(%arg0, %c0, %c0, %c16) : (!torchvtensor, !torchvint, !torchvint, !torchvint) -> !torchvtensor
    %slice1 = "torch.aten.slice.Tensor"(%arg1, %c0, %c0, %c16) : (!torchvtensor, !torchvint, !torchvint, !torchvint) -> !torchvtensor
    %slice2 = "torch.aten.slice.Tensor"(%arg2, %c0, %c0, %c16) : (!torchvtensor, !torchvint, !torchvint, !torchvint) -> !torchvtensor
    %slice3 = "torch.aten.slice.Tensor"(%arg3, %c0, %c0, %c16) : (!torchvtensor, !torchvint, !torchvint, !torchvint) -> !torchvtensor

    %cat0 = "torch.aten.cat"(%slice0, %slice1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %cat1 = "torch.aten.cat"(%slice2, %slice3) : (!torchvtensor, !torchvtensor) -> !torchvtensor

    %add0 = "torch.aten.add.Tensor"(%cat0, %cat1) : (!torchvtensor, !torchvtensor) -> !torchvtensor

    "func.return"(%add0) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()