"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector_type, !torchvvector_type) -> !torchvvector_type, sym_name = "torch.aten.add.Tensor_and_cat"}> ({
  ^bb0(%arg0: !torchvvector_type, %arg1: !torchvvector_type):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvvector_type, !torchvvector_type) -> !torchvvector_type
    %1 = "torch.aten.cat"(%0, %arg1) : (!torchvvector_type, !torchvvector_type) -> !torchvvector_type
    "func.return"(%1) : (!torchvvector_type) -> ()
  }) : () -> ()
}) : () -> ()