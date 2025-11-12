"builtin.module"() ({
  "func.func"() <{function_type = (!torchscalar, !torchscalar) -> !torchscalar, sym_name = "complex_math"}> ({
  ^bb0(%arg0: !torchscalar, %arg1: !torchscalar):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torchscalar, !torchscalar) -> !torchscalar
    %1 = "torch.aten.mul"(%arg0, %arg1) : (!torchscalar, !torchscalar) -> !torchscalar
    %2 = "torch.aten.sub"(%arg0, %arg1) : (!torchscalar, !torchscalar) -> !torchscalar
    %3 = "torch.aten.div"(%arg0, %arg1) : (!torchscalar, !torchscalar) -> !torchscalar
    %4 = "torch.aten.pow"(%arg0, %3) : (!torchscalar, !torchscalar) -> !torchscalar
    "func.return"(%4) : (!torchscalar) -> ()
  }) : () -> ()
}) : () -> ()