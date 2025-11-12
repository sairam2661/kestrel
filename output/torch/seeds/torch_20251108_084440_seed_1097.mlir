"builtin.module"() ({
  "func.func"() <{function_type = (!torchICollection, !torchICollection) -> !torchICollection, sym_name = "unusual_combinations"}> ({
  ^bb0(%arg0: !torchICollection, %arg1: !torchICollection):
    %0 = "torch.constant.str"() <{value = "hello" : !torchConstantStr}> : () -> !torchConstantStr
    %1 = "torch.constant.none"() : () -> !torchNoneType
    %2 = "torch.vtensor.literal"() <{value = dense<[[1.0, 2.0], [3.0, 4.0]]> : tensor<2x2xf32>, type = !torch_vtensor}> : () -> !torchVtensor
    %3 = "torch.aten.view"(%2, "vector<4xf32>") : (!torchVtensor, !vector_type) -> !torchVtensor
    %4 = "torch.aten.add.Tensor"(%3, %3) : (!torchVtensor, !torchVtensor) -> !torchVtensor
    %5 = "torch.aten.slice.Tensor"(%4, 0, 0, 2) : (!torchVtensor, !torchConstantInt, !torchConstantInt, !torchConstantInt) -> !torchVtensor
    %6 = "torch.prim.ListConstruct"(%0, %1, %3, %4, %5) : (!torchConstantStr, !torchNoneType, !torchVtensor, !torchVtensor, !torchVtensor) -> !torchList
    "func.return"(%6) : (!torchList) -> ()
  }) : () -> ()
}) : () -> ()