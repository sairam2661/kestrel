"builtin.module"() ({
  "func.func"() <{function_type = (!torchPTensor, !torchPTensor) -> !torchPTensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torchPTensor, %arg1: !torchPTensor):
    %cst0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchPTensor
    %cst1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchPTensor
    %cst2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchPTensor

    %size0 = "torch.aten.size.int"(%arg0, %cst0) : (!torchPTensor, !torchPTensor) -> !torchPTensor
    %size1 = "torch.aten.size.int"(%arg0, %cst1) : (!torchPTensor, !torchPTensor) -> !torchPTensor

    %add0 = "torch.aten.add.Tensor"(%size0, %size1) : (!torchPTensor, !torchPTensor) -> !torchPTensor
    %add1 = "torch.aten.add.Tensor"(%add0, %cst2) : (!torchPTensor, !torchPTensor) -> !torchPTensor

    %shape0 = "torch._shape_as_tensor"(%add1) : (!torchPTensor) -> !torchPTensor
    %shape1 = "torch._shape_as_tensor"(%size1) : (!torchPTensor) -> !torchPTensor

    %list0 = "torch.prim.ListConstruct"(%shape0, %shape1) : (!torchPTensor, !torchPTensor) -> !torchPTensor

    %view0 = "torch.aten.view"(%arg1, %list0) : (!torchPTensor, !torchPTensor) -> !torchPTensor

    %eq0 = "torch.aten.eq.Tensor"(%view0, %arg0) : (!torchPTensor, !torchPTensor) -> !torchPTensor

    "func.return"(%eq0) : (!torchPTensor) -> ()
  }) : () -> ()
}) : () -> ()