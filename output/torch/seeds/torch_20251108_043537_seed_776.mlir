"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector, !torchvvector) -> !torchvvector, sym_name = "test_tensor_manipulation"}> ({
  ^bb0(%arg0: !torchvvector, %arg1: !torchvvector):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvvector
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvvector
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvvector
    %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchvvector
    %c4 = "torch.constant.bool"() <{value = true}> : () -> !torchvvector
    %c5 = "torch.constant.none"() : () -> !torchvvector
    %0 = "torch.aten.view"(%arg0, %c2, %c3) : (!torchvvector, !torchvvector, !torchvvector) -> !torchvvector
    %1 = "torch.aten.slice.Tensor"(%0, %c0, %c0, %c3) : (!torchvvector, !torchvvector, !torchvvector, !torchvvector) -> !torchvvector
    %2 = "torch.aten.index_select"(%arg1, %c1, %c0) : (!torchvvector, !torchvvector, !torchvvector) -> !torchvvector
    %3 = "torch.aten.add.Tensor"(%1, %2) : (!torchvvector, !torchvvector) -> !torchvvector
    "func.return"(%3) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()