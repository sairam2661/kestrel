"builtin.module"() ({
  "func.func"() <{function_type = (!torchv15tensor, !torchv15tensor) -> !torchv15tensor, sym_name = "torch.aten.add.Tensor$non_uniform_shapes"}> ({
  ^bb0(%arg0: !torchv15tensor, %arg1: !torchv15tensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchv15tensor, !torchv15tensor) -> !torchv15tensor
    "func.return"(%0) : (!torchv15tensor) -> ()
  }) : () -> ()
}) : () -> ()