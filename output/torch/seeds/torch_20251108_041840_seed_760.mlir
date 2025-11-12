"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvectortype, !torchvvectortype) -> !torchvvectortype, sym_name = "unusual_binary_op"}> ({
  ^bb0(%arg0: !torchvvectortype, %arg1: !torchvvectortype):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torchvvectortype, !torchvvectortype) -> !torchvvectortype
    %1 = "torch.aten.mul"(%0, %0) : (!torchvvectortype, !torchvvectortype) -> !torchvvectortype
    %2 = "torch.aten.sub"(%1, %arg0) : (!torchvvectortype, !torchvvectortype) -> !torchvvectortype
    "func.return"(%2) : (!torchvvectortype) -> ()
  }) : () -> ()
}) : () -> ()