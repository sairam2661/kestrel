"builtin.module"() ({
  "func.func"() <{function_type = (!torchv13ref) -> !torchv13ref, sym_name = "nested_slicing_and_viewing"}> ({
  ^bb0(%arg0: !torchv13ref):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv13ref
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv13ref
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv13ref
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv13ref
    %4 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torchv13ref, !torchv13ref, !torchv13ref, !torchv13ref) -> !torchv13ref
    %5 = "torch.aten.view"(%4, %3) : (!torchv13ref, !torchv13ref) -> !torchv13ref
    "func.return"(%5) : (!torchv13ref) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchv13ref, !torchv13ref) -> !torchv13ref, sym_name = "elementwise_add_with_none"}> ({
  ^bb0(%arg0: !torchv13ref, %arg1: !torchv13ref):
    %0 = "torch.constant.none"() : () -> !torchv13ref
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torchv13ref, !torchv13ref, !torchv13ref) -> !torchv13ref
    "func.return"(%1) : (!torchv13ref) -> ()
  }) : () -> ()
}) : () -> ()